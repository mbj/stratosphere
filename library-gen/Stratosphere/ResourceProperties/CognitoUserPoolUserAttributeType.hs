{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html

module Stratosphere.ResourceProperties.CognitoUserPoolUserAttributeType where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoUserPoolUserAttributeType. See
-- 'cognitoUserPoolUserAttributeType' for a more convenient constructor.
data CognitoUserPoolUserAttributeType =
  CognitoUserPoolUserAttributeType
  { _cognitoUserPoolUserAttributeTypeName :: Maybe (Val Text)
  , _cognitoUserPoolUserAttributeTypeValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolUserAttributeType where
  toJSON CognitoUserPoolUserAttributeType{..} =
    object $
    catMaybes
    [ ("Name" .=) <$> _cognitoUserPoolUserAttributeTypeName
    , ("Value" .=) <$> _cognitoUserPoolUserAttributeTypeValue
    ]

instance FromJSON CognitoUserPoolUserAttributeType where
  parseJSON (Object obj) =
    CognitoUserPoolUserAttributeType <$>
      obj .:? "Name" <*>
      obj .:? "Value"
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolUserAttributeType' containing required
-- fields as arguments.
cognitoUserPoolUserAttributeType
  :: CognitoUserPoolUserAttributeType
cognitoUserPoolUserAttributeType  =
  CognitoUserPoolUserAttributeType
  { _cognitoUserPoolUserAttributeTypeName = Nothing
  , _cognitoUserPoolUserAttributeTypeValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html#cfn-cognito-userpooluser-attributetype-name
cupuatName :: Lens' CognitoUserPoolUserAttributeType (Maybe (Val Text))
cupuatName = lens _cognitoUserPoolUserAttributeTypeName (\s a -> s { _cognitoUserPoolUserAttributeTypeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooluser-attributetype.html#cfn-cognito-userpooluser-attributetype-value
cupuatValue :: Lens' CognitoUserPoolUserAttributeType (Maybe (Val Text))
cupuatValue = lens _cognitoUserPoolUserAttributeTypeValue (\s a -> s { _cognitoUserPoolUserAttributeTypeValue = a })
