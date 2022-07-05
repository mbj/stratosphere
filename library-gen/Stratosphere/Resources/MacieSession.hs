{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-session.html

module Stratosphere.Resources.MacieSession where

import Stratosphere.ResourceImports


-- | Full data type definition for MacieSession. See 'macieSession' for a more
-- convenient constructor.
data MacieSession =
  MacieSession
  { _macieSessionFindingPublishingFrequency :: Maybe (Val Text)
  , _macieSessionStatus :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties MacieSession where
  toResourceProperties MacieSession{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Macie::Session"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("FindingPublishingFrequency",) . toJSON) _macieSessionFindingPublishingFrequency
        , fmap (("Status",) . toJSON) _macieSessionStatus
        ]
    }

-- | Constructor for 'MacieSession' containing required fields as arguments.
macieSession
  :: MacieSession
macieSession  =
  MacieSession
  { _macieSessionFindingPublishingFrequency = Nothing
  , _macieSessionStatus = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-session.html#cfn-macie-session-findingpublishingfrequency
msFindingPublishingFrequency :: Lens' MacieSession (Maybe (Val Text))
msFindingPublishingFrequency = lens _macieSessionFindingPublishingFrequency (\s a -> s { _macieSessionFindingPublishingFrequency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-session.html#cfn-macie-session-status
msStatus :: Lens' MacieSession (Maybe (Val Text))
msStatus = lens _macieSessionStatus (\s a -> s { _macieSessionStatus = a })
