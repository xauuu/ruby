ClassicEditor
    .create(document.querySelector('#note'))
    .then(editor => {
        console.log(editor);
    })
    .catch(error => {
        console.error(error);
    });