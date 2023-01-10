
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters. See
-- 'ssmMaintenanceWindowTaskMaintenanceWindowAutomationParameters' for a
-- more convenient constructor.
data SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters =
  SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters where
  toJSON SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters{..} =
    object $
    catMaybes
    [ fmap (("DocumentVersion",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion
    , fmap (("Parameters",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters
    ]

-- | Constructor for
-- 'SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters'
-- containing required fields as arguments.
ssmMaintenanceWindowTaskMaintenanceWindowAutomationParameters
  :: SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters
ssmMaintenanceWindowTaskMaintenanceWindowAutomationParameters  =
  SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-documentversion
ssmmwtmwapDocumentVersion :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters (Maybe (Val Text))
ssmmwtmwapDocumentVersion = lens _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-parameters
ssmmwtmwapParameters :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters (Maybe Object)
ssmmwtmwapParameters = lens _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters = a })
