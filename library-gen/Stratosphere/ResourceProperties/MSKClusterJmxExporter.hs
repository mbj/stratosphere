
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-jmxexporter.html

module Stratosphere.ResourceProperties.MSKClusterJmxExporter where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterJmxExporter. See
-- 'mskClusterJmxExporter' for a more convenient constructor.
data MSKClusterJmxExporter =
  MSKClusterJmxExporter
  { _mSKClusterJmxExporterEnabledInBroker :: Val Bool
  } deriving (Show, Eq)

instance ToJSON MSKClusterJmxExporter where
  toJSON MSKClusterJmxExporter{..} =
    object $
    catMaybes
    [ (Just . ("EnabledInBroker",) . toJSON) _mSKClusterJmxExporterEnabledInBroker
    ]

-- | Constructor for 'MSKClusterJmxExporter' containing required fields as
-- arguments.
mskClusterJmxExporter
  :: Val Bool -- ^ 'mskcjeEnabledInBroker'
  -> MSKClusterJmxExporter
mskClusterJmxExporter enabledInBrokerarg =
  MSKClusterJmxExporter
  { _mSKClusterJmxExporterEnabledInBroker = enabledInBrokerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-jmxexporter.html#cfn-msk-cluster-jmxexporter-enabledinbroker
mskcjeEnabledInBroker :: Lens' MSKClusterJmxExporter (Val Bool)
mskcjeEnabledInBroker = lens _mSKClusterJmxExporterEnabledInBroker (\s a -> s { _mSKClusterJmxExporterEnabledInBroker = a })
