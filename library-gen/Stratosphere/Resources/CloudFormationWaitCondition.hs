{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html

module Stratosphere.Resources.CloudFormationWaitCondition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFormationWaitCondition. See
-- | 'cloudFormationWaitCondition' for a more convenient constructor.
data CloudFormationWaitCondition =
  CloudFormationWaitCondition
  { _cloudFormationWaitConditionCount :: Maybe (Val Integer')
  , _cloudFormationWaitConditionHandle :: Val Text
  , _cloudFormationWaitConditionTimeout :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFormationWaitCondition where
  toJSON CloudFormationWaitCondition{..} =
    object $
    catMaybes
    [ ("Count" .=) <$> _cloudFormationWaitConditionCount
    , Just ("Handle" .= _cloudFormationWaitConditionHandle)
    , Just ("Timeout" .= _cloudFormationWaitConditionTimeout)
    ]

instance FromJSON CloudFormationWaitCondition where
  parseJSON (Object obj) =
    CloudFormationWaitCondition <$>
      obj .:? "Count" <*>
      obj .: "Handle" <*>
      obj .: "Timeout"
  parseJSON _ = mempty

-- | Constructor for 'CloudFormationWaitCondition' containing required fields
-- | as arguments.
cloudFormationWaitCondition
  :: Val Text -- ^ 'cfwcHandle'
  -> Val Text -- ^ 'cfwcTimeout'
  -> CloudFormationWaitCondition
cloudFormationWaitCondition handlearg timeoutarg =
  CloudFormationWaitCondition
  { _cloudFormationWaitConditionCount = Nothing
  , _cloudFormationWaitConditionHandle = handlearg
  , _cloudFormationWaitConditionTimeout = timeoutarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-count
cfwcCount :: Lens' CloudFormationWaitCondition (Maybe (Val Integer'))
cfwcCount = lens _cloudFormationWaitConditionCount (\s a -> s { _cloudFormationWaitConditionCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-handle
cfwcHandle :: Lens' CloudFormationWaitCondition (Val Text)
cfwcHandle = lens _cloudFormationWaitConditionHandle (\s a -> s { _cloudFormationWaitConditionHandle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-timeout
cfwcTimeout :: Lens' CloudFormationWaitCondition (Val Text)
cfwcTimeout = lens _cloudFormationWaitConditionTimeout (\s a -> s { _cloudFormationWaitConditionTimeout = a })
