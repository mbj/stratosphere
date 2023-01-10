
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-nodeexporter.html

module Stratosphere.ResourceProperties.MSKClusterNodeExporter where

import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterNodeExporter. See
-- 'mskClusterNodeExporter' for a more convenient constructor.
data MSKClusterNodeExporter =
  MSKClusterNodeExporter
  { _mSKClusterNodeExporterEnabledInBroker :: Val Bool
  } deriving (Show, Eq)

instance ToJSON MSKClusterNodeExporter where
  toJSON MSKClusterNodeExporter{..} =
    object $
    catMaybes
    [ (Just . ("EnabledInBroker",) . toJSON) _mSKClusterNodeExporterEnabledInBroker
    ]

-- | Constructor for 'MSKClusterNodeExporter' containing required fields as
-- arguments.
mskClusterNodeExporter
  :: Val Bool -- ^ 'mskcneEnabledInBroker'
  -> MSKClusterNodeExporter
mskClusterNodeExporter enabledInBrokerarg =
  MSKClusterNodeExporter
  { _mSKClusterNodeExporterEnabledInBroker = enabledInBrokerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-nodeexporter.html#cfn-msk-cluster-nodeexporter-enabledinbroker
mskcneEnabledInBroker :: Lens' MSKClusterNodeExporter (Val Bool)
mskcneEnabledInBroker = lens _mSKClusterNodeExporterEnabledInBroker (\s a -> s { _mSKClusterNodeExporterEnabledInBroker = a })
