{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html

module Stratosphere.ResourceProperties.CognitoUserPoolNumberAttributeConstraints where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoUserPoolNumberAttributeConstraints.
-- See 'cognitoUserPoolNumberAttributeConstraints' for a more convenient
-- constructor.
data CognitoUserPoolNumberAttributeConstraints =
  CognitoUserPoolNumberAttributeConstraints
  { _cognitoUserPoolNumberAttributeConstraintsMaxValue :: Maybe (Val Text)
  , _cognitoUserPoolNumberAttributeConstraintsMinValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolNumberAttributeConstraints where
  toJSON CognitoUserPoolNumberAttributeConstraints{..} =
    object $
    catMaybes
    [ ("MaxValue" .=) <$> _cognitoUserPoolNumberAttributeConstraintsMaxValue
    , ("MinValue" .=) <$> _cognitoUserPoolNumberAttributeConstraintsMinValue
    ]

instance FromJSON CognitoUserPoolNumberAttributeConstraints where
  parseJSON (Object obj) =
    CognitoUserPoolNumberAttributeConstraints <$>
      obj .:? "MaxValue" <*>
      obj .:? "MinValue"
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolNumberAttributeConstraints' containing
-- required fields as arguments.
cognitoUserPoolNumberAttributeConstraints
  :: CognitoUserPoolNumberAttributeConstraints
cognitoUserPoolNumberAttributeConstraints  =
  CognitoUserPoolNumberAttributeConstraints
  { _cognitoUserPoolNumberAttributeConstraintsMaxValue = Nothing
  , _cognitoUserPoolNumberAttributeConstraintsMinValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-maxvalue
cupnacMaxValue :: Lens' CognitoUserPoolNumberAttributeConstraints (Maybe (Val Text))
cupnacMaxValue = lens _cognitoUserPoolNumberAttributeConstraintsMaxValue (\s a -> s { _cognitoUserPoolNumberAttributeConstraintsMaxValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-numberattributeconstraints.html#cfn-cognito-userpool-numberattributeconstraints-minvalue
cupnacMinValue :: Lens' CognitoUserPoolNumberAttributeConstraints (Maybe (Val Text))
cupnacMinValue = lens _cognitoUserPoolNumberAttributeConstraintsMinValue (\s a -> s { _cognitoUserPoolNumberAttributeConstraintsMinValue = a })
