{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters. See
-- 'ssmMaintenanceWindowTaskMaintenanceWindowLambdaParameters' for a more
-- convenient constructor.
data SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters =
  SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersClientContext :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersPayload :: Maybe (Val Text)
  , _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersQualifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters where
  toJSON SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters{..} =
    object $
    catMaybes
    [ fmap (("ClientContext",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersClientContext
    , fmap (("Payload",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersPayload
    , fmap (("Qualifier",) . toJSON) _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersQualifier
    ]

instance FromJSON SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters where
  parseJSON (Object obj) =
    SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters <$>
      (obj .:? "ClientContext") <*>
      (obj .:? "Payload") <*>
      (obj .:? "Qualifier")
  parseJSON _ = mempty

-- | Constructor for
-- 'SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters' containing
-- required fields as arguments.
ssmMaintenanceWindowTaskMaintenanceWindowLambdaParameters
  :: SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters
ssmMaintenanceWindowTaskMaintenanceWindowLambdaParameters  =
  SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters
  { _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersClientContext = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersPayload = Nothing
  , _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersQualifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters-clientcontext
ssmmwtmwlpClientContext :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters (Maybe (Val Text))
ssmmwtmwlpClientContext = lens _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersClientContext (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersClientContext = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters-payload
ssmmwtmwlpPayload :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters (Maybe (Val Text))
ssmmwtmwlpPayload = lens _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersPayload (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersPayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters-qualifier
ssmmwtmwlpQualifier :: Lens' SSMMaintenanceWindowTaskMaintenanceWindowLambdaParameters (Maybe (Val Text))
ssmmwtmwlpQualifier = lens _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersQualifier (\s a -> s { _sSMMaintenanceWindowTaskMaintenanceWindowLambdaParametersQualifier = a })
