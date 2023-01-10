
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData. See
-- 'greengrassResourceDefinitionVersionSecretsManagerSecretResourceData' for
-- a more convenient constructor.
data GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData =
  GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData
  { _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataARN :: Val Text
  , _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData where
  toJSON GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData{..} =
    object $
    catMaybes
    [ (Just . ("ARN",) . toJSON) _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataARN
    , fmap (("AdditionalStagingLabelsToDownload",) . toJSON) _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData'
-- containing required fields as arguments.
greengrassResourceDefinitionVersionSecretsManagerSecretResourceData
  :: Val Text -- ^ 'grdvsmsrdARN'
  -> GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData
greengrassResourceDefinitionVersionSecretsManagerSecretResourceData aRNarg =
  GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData
  { _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataARN = aRNarg
  , _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-arn
grdvsmsrdARN :: Lens' GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData (Val Text)
grdvsmsrdARN = lens _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataARN (\s a -> s { _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
grdvsmsrdAdditionalStagingLabelsToDownload :: Lens' GreengrassResourceDefinitionVersionSecretsManagerSecretResourceData (Maybe (ValList Text))
grdvsmsrdAdditionalStagingLabelsToDownload = lens _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload (\s a -> s { _greengrassResourceDefinitionVersionSecretsManagerSecretResourceDataAdditionalStagingLabelsToDownload = a })
