import React from 'react';
import styled from 'styled-components';

const ConstructionPage = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-color: #f2f2f2;
`;

const ConstructionContent = styled.div`
  text-align: center;
`;

const ConstructionHeading = styled.h1`
  font-size: 24px;
  color: #333;
`;

const ConstructionMessage = styled.p`
  font-size: 16px;
  color: #666;
`;

function UnderConstruction() {
    return (
        <ConstructionPage>
            <ConstructionContent>
                <ConstructionHeading>Em Construção</ConstructionHeading>
                <ConstructionMessage>Desculpe, esta página está em construção. Estamos trabalhando nela e em breve estará disponível.</ConstructionMessage>
            </ConstructionContent>
        </ConstructionPage>
    );
}

export default UnderConstruction;
