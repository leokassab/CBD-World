

const fileInput = document.querySelector('input[type="file"]');
  const preview = document.querySelector('img.preview');
  const reader = new FileReader();


function handleEvent(event) {
  if (event.type === "load") {
    preview.src = reader.result;
  }
}

function addListeners(reader) {
  reader.addEventListener('loadstart', handleEvent);
  reader.addEventListener('load', handleEvent);
  reader.addEventListener('loadend', handleEvent);
  reader.addEventListener('progress', handleEvent);
  reader.addEventListener('error', handleEvent);
  reader.addEventListener('abort', handleEvent);
}

function handleSelected(e) {
  const selectedFile = fileInput.files[0];
  if (selectedFile) {
    addListeners(reader);
    reader.readAsDataURL(selectedFile);
  }
}



const pictUploaded = () => {

  fileInput.addEventListener('change', handleSelected);
}

export { pictUploaded };
