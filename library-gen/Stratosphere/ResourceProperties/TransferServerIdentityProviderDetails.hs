
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html

module Stratosphere.ResourceProperties.TransferServerIdentityProviderDetails where

import Stratosphere.ResourceImports


-- | Full data type definition for TransferServerIdentityProviderDetails. See
-- 'transferServerIdentityProviderDetails' for a more convenient
-- constructor.
data TransferServerIdentityProviderDetails =
  TransferServerIdentityProviderDetails
  { _transferServerIdentityProviderDetailsInvocationRole :: Val Text
  , _transferServerIdentityProviderDetailsUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON TransferServerIdentityProviderDetails where
  toJSON TransferServerIdentityProviderDetails{..} =
    object $
    catMaybes
    [ (Just . ("InvocationRole",) . toJSON) _transferServerIdentityProviderDetailsInvocationRole
    , (Just . ("Url",) . toJSON) _transferServerIdentityProviderDetailsUrl
    ]

-- | Constructor for 'TransferServerIdentityProviderDetails' containing
-- required fields as arguments.
transferServerIdentityProviderDetails
  :: Val Text -- ^ 'tsipdInvocationRole'
  -> Val Text -- ^ 'tsipdUrl'
  -> TransferServerIdentityProviderDetails
transferServerIdentityProviderDetails invocationRolearg urlarg =
  TransferServerIdentityProviderDetails
  { _transferServerIdentityProviderDetailsInvocationRole = invocationRolearg
  , _transferServerIdentityProviderDetailsUrl = urlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html#cfn-transfer-server-identityproviderdetails-invocationrole
tsipdInvocationRole :: Lens' TransferServerIdentityProviderDetails (Val Text)
tsipdInvocationRole = lens _transferServerIdentityProviderDetailsInvocationRole (\s a -> s { _transferServerIdentityProviderDetailsInvocationRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html#cfn-transfer-server-identityproviderdetails-url
tsipdUrl :: Lens' TransferServerIdentityProviderDetails (Val Text)
tsipdUrl = lens _transferServerIdentityProviderDetailsUrl (\s a -> s { _transferServerIdentityProviderDetailsUrl = a })
