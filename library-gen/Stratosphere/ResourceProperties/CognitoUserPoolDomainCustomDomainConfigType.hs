
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html

module Stratosphere.ResourceProperties.CognitoUserPoolDomainCustomDomainConfigType where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolDomainCustomDomainConfigType. See
-- 'cognitoUserPoolDomainCustomDomainConfigType' for a more convenient
-- constructor.
data CognitoUserPoolDomainCustomDomainConfigType =
  CognitoUserPoolDomainCustomDomainConfigType
  { _cognitoUserPoolDomainCustomDomainConfigTypeCertificateArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolDomainCustomDomainConfigType where
  toJSON CognitoUserPoolDomainCustomDomainConfigType{..} =
    object $
    catMaybes
    [ fmap (("CertificateArn",) . toJSON) _cognitoUserPoolDomainCustomDomainConfigTypeCertificateArn
    ]

-- | Constructor for 'CognitoUserPoolDomainCustomDomainConfigType' containing
-- required fields as arguments.
cognitoUserPoolDomainCustomDomainConfigType
  :: CognitoUserPoolDomainCustomDomainConfigType
cognitoUserPoolDomainCustomDomainConfigType  =
  CognitoUserPoolDomainCustomDomainConfigType
  { _cognitoUserPoolDomainCustomDomainConfigTypeCertificateArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html#cfn-cognito-userpooldomain-customdomainconfigtype-certificatearn
cupdcdctCertificateArn :: Lens' CognitoUserPoolDomainCustomDomainConfigType (Maybe (Val Text))
cupdcdctCertificateArn = lens _cognitoUserPoolDomainCustomDomainConfigTypeCertificateArn (\s a -> s { _cognitoUserPoolDomainCustomDomainConfigTypeCertificateArn = a })
