const prescribeButton = document.getElementById('prescribeButton');
const prescriptionDiv = document.getElementById('prescription');

prescribeButton.addEventListener('click', async () => {
  const disease = document.getElementById('disease').value;
  if (!disease) {
    alert('Please select a disease!');
    return;
  }

  try {
    const response = await fetch('/prescriptions', {
      method: 'POST',
      headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
      body: `disease=${disease}` // Send disease as form data
    });

    if (response.ok) {
      const prescription = await response.text();
      prescriptionDiv.textContent = prescription;
    } else {
      alert('Error retrieving prescription!');
    }
  } catch (error) {
    console.error(error);
    alert('An error occurred!');
  }
});
