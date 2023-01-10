
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconformancepack-conformancepackinputparameter.html

module Stratosphere.ResourceProperties.ConfigOrganizationConformancePackConformancePackInputParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigOrganizationConformancePackConformancePackInputParameter. See
-- 'configOrganizationConformancePackConformancePackInputParameter' for a
-- more convenient constructor.
data ConfigOrganizationConformancePackConformancePackInputParameter =
  ConfigOrganizationConformancePackConformancePackInputParameter
  { _configOrganizationConformancePackConformancePackInputParameterParameterName :: Val Text
  , _configOrganizationConformancePackConformancePackInputParameterParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigOrganizationConformancePackConformancePackInputParameter where
  toJSON ConfigOrganizationConformancePackConformancePackInputParameter{..} =
    object $
    catMaybes
    [ (Just . ("ParameterName",) . toJSON) _configOrganizationConformancePackConformancePackInputParameterParameterName
    , (Just . ("ParameterValue",) . toJSON) _configOrganizationConformancePackConformancePackInputParameterParameterValue
    ]

-- | Constructor for
-- 'ConfigOrganizationConformancePackConformancePackInputParameter'
-- containing required fields as arguments.
configOrganizationConformancePackConformancePackInputParameter
  :: Val Text -- ^ 'cocpcpipParameterName'
  -> Val Text -- ^ 'cocpcpipParameterValue'
  -> ConfigOrganizationConformancePackConformancePackInputParameter
configOrganizationConformancePackConformancePackInputParameter parameterNamearg parameterValuearg =
  ConfigOrganizationConformancePackConformancePackInputParameter
  { _configOrganizationConformancePackConformancePackInputParameterParameterName = parameterNamearg
  , _configOrganizationConformancePackConformancePackInputParameterParameterValue = parameterValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconformancepack-conformancepackinputparameter.html#cfn-config-organizationconformancepack-conformancepackinputparameter-parametername
cocpcpipParameterName :: Lens' ConfigOrganizationConformancePackConformancePackInputParameter (Val Text)
cocpcpipParameterName = lens _configOrganizationConformancePackConformancePackInputParameterParameterName (\s a -> s { _configOrganizationConformancePackConformancePackInputParameterParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconformancepack-conformancepackinputparameter.html#cfn-config-organizationconformancepack-conformancepackinputparameter-parametervalue
cocpcpipParameterValue :: Lens' ConfigOrganizationConformancePackConformancePackInputParameter (Val Text)
cocpcpipParameterValue = lens _configOrganizationConformancePackConformancePackInputParameterParameterValue (\s a -> s { _configOrganizationConformancePackConformancePackInputParameterParameterValue = a })
