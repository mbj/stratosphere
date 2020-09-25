{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-authorizer-tags.html

module Stratosphere.ResourceProperties.IoTAuthorizerTags where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAuthorizerTags. See 'ioTAuthorizerTags'
-- for a more convenient constructor.
data IoTAuthorizerTags =
  IoTAuthorizerTags
  { _ioTAuthorizerTagsTags :: Maybe [Object]
  } deriving (Show, Eq)

instance ToJSON IoTAuthorizerTags where
  toJSON IoTAuthorizerTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _ioTAuthorizerTagsTags
    ]

-- | Constructor for 'IoTAuthorizerTags' containing required fields as
-- arguments.
ioTAuthorizerTags
  :: IoTAuthorizerTags
ioTAuthorizerTags  =
  IoTAuthorizerTags
  { _ioTAuthorizerTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-authorizer-tags.html#cfn-iot-authorizer-tags-tags
itatTags :: Lens' IoTAuthorizerTags (Maybe [Object])
itatTags = lens _ioTAuthorizerTagsTags (\s a -> s { _ioTAuthorizerTagsTags = a })
