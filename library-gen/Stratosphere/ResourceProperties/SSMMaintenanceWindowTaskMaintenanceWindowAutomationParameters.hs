{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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

instance FromJSON SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters where
  parseJSON (Object obj) =
    SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters <$>
      (obj .:? "DocumentVersion") <*>
      (obj .:? "Parameters")
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters-documentversion
ssmmwtmwapDocumentVersion :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters (Maybe (Val Text))
ssmmwtmwapDocumentVersion = lens _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersDocumentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters-parameters
ssmmwtmwapParameters :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowAutomationParameters (Maybe Object)
ssmmwtmwapParameters = lens _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowAutomationParametersParameters = a })
