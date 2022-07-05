{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html

module Stratosphere.Resources.KinesisAnalyticsApplication where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInput

-- | Full data type definition for KinesisAnalyticsApplication. See
-- 'kinesisAnalyticsApplication' for a more convenient constructor.
data KinesisAnalyticsApplication =
  KinesisAnalyticsApplication
  { _kinesisAnalyticsApplicationApplicationCode :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationApplicationDescription :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationApplicationName :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationInputs :: [KinesisAnalyticsApplicationInput]
  } deriving (Show, Eq)

instance ToResourceProperties KinesisAnalyticsApplication where
  toResourceProperties KinesisAnalyticsApplication{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::KinesisAnalytics::Application"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ApplicationCode",) . toJSON) _kinesisAnalyticsApplicationApplicationCode
        , fmap (("ApplicationDescription",) . toJSON) _kinesisAnalyticsApplicationApplicationDescription
        , fmap (("ApplicationName",) . toJSON) _kinesisAnalyticsApplicationApplicationName
        , (Just . ("Inputs",) . toJSON) _kinesisAnalyticsApplicationInputs
        ]
    }

-- | Constructor for 'KinesisAnalyticsApplication' containing required fields
-- as arguments.
kinesisAnalyticsApplication
  :: [KinesisAnalyticsApplicationInput] -- ^ 'kaaInputs'
  -> KinesisAnalyticsApplication
kinesisAnalyticsApplication inputsarg =
  KinesisAnalyticsApplication
  { _kinesisAnalyticsApplicationApplicationCode = Nothing
  , _kinesisAnalyticsApplicationApplicationDescription = Nothing
  , _kinesisAnalyticsApplicationApplicationName = Nothing
  , _kinesisAnalyticsApplicationInputs = inputsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-applicationcode
kaaApplicationCode :: Lens' KinesisAnalyticsApplication (Maybe (Val Text))
kaaApplicationCode = lens _kinesisAnalyticsApplicationApplicationCode (\s a -> s { _kinesisAnalyticsApplicationApplicationCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-applicationdescription
kaaApplicationDescription :: Lens' KinesisAnalyticsApplication (Maybe (Val Text))
kaaApplicationDescription = lens _kinesisAnalyticsApplicationApplicationDescription (\s a -> s { _kinesisAnalyticsApplicationApplicationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-applicationname
kaaApplicationName :: Lens' KinesisAnalyticsApplication (Maybe (Val Text))
kaaApplicationName = lens _kinesisAnalyticsApplicationApplicationName (\s a -> s { _kinesisAnalyticsApplicationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-inputs
kaaInputs :: Lens' KinesisAnalyticsApplication [KinesisAnalyticsApplicationInput]
kaaInputs = lens _kinesisAnalyticsApplicationInputs (\s a -> s { _kinesisAnalyticsApplicationInputs = a })
