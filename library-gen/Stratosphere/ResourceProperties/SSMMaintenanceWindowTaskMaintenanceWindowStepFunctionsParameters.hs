{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters. See
-- 'ssmMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters' for a
-- more convenient constructor.
data SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters =
  SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersInput :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters where
  toJSON SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters{..} =
    object $
    catMaybes
    [ fmap (("Input",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersInput
    , fmap (("Name",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersName
    ]

instance FromJSON SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters where
  parseJSON (Object obj) =
    SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters <$>
      (obj .:? "Input") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for
-- 'SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters'
-- containing required fields as arguments.
ssmMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters
  :: SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters
ssmMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters  =
  SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersInput = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters-input
ssmmwtmwsfpInput :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters (Maybe (Val Text))
ssmmwtmwsfpInput = lens _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersInput (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters-name
ssmmwtmwsfpName :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParameters (Maybe (Val Text))
ssmmwtmwsfpName = lens _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersName (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowStepFunctionsParametersName = a })
