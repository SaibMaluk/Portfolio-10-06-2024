describe('Login Page testing', () => {
  it('Visits the MKTIME Login page, checks the element button', () => {
    // Visit the Page
    cy.visit('http://localhost/codespace/Challenges/MKTimeOngoing/MKTIME/products.php')
  // Query for the element
  cy.get('.card-title').should('exist')
// Check if the buttonAdd to Cart exists and has the right text present
cy.get('.btn').should('exist').contains('Add to Cart');
//cy.get('.btn-light').should('exist').and('have.text', 'Add to Cart');
cy.get('.card-text').should('exist').contains(',');
cy.get('.card-footer').should('exist').contains('£');
  })
})



