
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionSecretsManagerSecretResourceData where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionSecretsManagerSecretResourceData. See
-- 'greengrassResourceDefinitionSecretsManagerSecretResourceData' for a more
-- convenient constructor.
data GreengrassResourceDefinitionSecretsManagerSecretResourceData =
  GreengrassResourceDefinitionSecretsManagerSecretResourceData
  { _greengrassResourceDefinitionSecretsManagerSecretResourceDataARN :: Val Text
  , _greengrassResourceDefinitionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionSecretsManagerSecretResourceData where
  toJSON GreengrassResourceDefinitionSecretsManagerSecretResourceData{..} =
    object $
    catMaybes
    [ (Just . ("ARN",) . toJSON) _greengrassResourceDefinitionSecretsManagerSecretResourceDataARN
    , fmap (("AdditionalStagingLabelsToDownload",) . toJSON) _greengrassResourceDefinitionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionSecretsManagerSecretResourceData' containing
-- required fields as arguments.
greengrassResourceDefinitionSecretsManagerSecretResourceData
  :: Val Text -- ^ 'grdsmsrdARN'
  -> GreengrassResourceDefinitionSecretsManagerSecretResourceData
greengrassResourceDefinitionSecretsManagerSecretResourceData aRNarg =
  GreengrassResourceDefinitionSecretsManagerSecretResourceData
  { _greengrassResourceDefinitionSecretsManagerSecretResourceDataARN = aRNarg
  , _greengrassResourceDefinitionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-arn
grdsmsrdARN :: Lens' GreengrassResourceDefinitionSecretsManagerSecretResourceData (Val Text)
grdsmsrdARN = lens _greengrassResourceDefinitionSecretsManagerSecretResourceDataARN (\s a -> s { _greengrassResourceDefinitionSecretsManagerSecretResourceDataARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
grdsmsrdAdditionalStagingLabelsToDownload :: Lens' GreengrassResourceDefinitionSecretsManagerSecretResourceData (Maybe (ValList Text))
grdsmsrdAdditionalStagingLabelsToDownload = lens _greengrassResourceDefinitionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload (\s a -> s { _greengrassResourceDefinitionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload = a })
