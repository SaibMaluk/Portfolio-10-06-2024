describe('Login Page testing', () => {
  it('Visits the MKTIME Login page, checks the element button', () => {
    // Visit the Page
    cy.visit('http://localhost/codespace/Challenges/MKTimeOngoing/MKTIME/products.php')
  // Query for the element
  cy.get('.card-title').should('exist')
// Check if the buttonAdd to Cart exists and has the right text present
cy.get('.btn').should('exist').contains('Add to Cart');
// Check if the product has a text descriping its features, that would contain a comma
cy.get('.card-text').should('exist').contains(',');
// Check if the product has a text stating the price, that would contain the pound sign '£'
cy.get('.card-footer').should('exist').contains('£');
  })
})
