{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html

module Stratosphere.ResourceProperties.CognitoUserPoolSchemaAttribute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolNumberAttributeConstraints
import Stratosphere.ResourceProperties.CognitoUserPoolStringAttributeConstraints

-- | Full data type definition for CognitoUserPoolSchemaAttribute. See
-- 'cognitoUserPoolSchemaAttribute' for a more convenient constructor.
data CognitoUserPoolSchemaAttribute =
  CognitoUserPoolSchemaAttribute
  { _cognitoUserPoolSchemaAttributeAttributeDataType :: Maybe (Val Text)
  , _cognitoUserPoolSchemaAttributeDeveloperOnlyAttribute :: Maybe (Val Bool)
  , _cognitoUserPoolSchemaAttributeMutable :: Maybe (Val Bool)
  , _cognitoUserPoolSchemaAttributeName :: Maybe (Val Text)
  , _cognitoUserPoolSchemaAttributeNumberAttributeConstraints :: Maybe CognitoUserPoolNumberAttributeConstraints
  , _cognitoUserPoolSchemaAttributeRequired :: Maybe (Val Bool)
  , _cognitoUserPoolSchemaAttributeStringAttributeConstraints :: Maybe CognitoUserPoolStringAttributeConstraints
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolSchemaAttribute where
  toJSON CognitoUserPoolSchemaAttribute{..} =
    object $
    catMaybes
    [ fmap (("AttributeDataType",) . toJSON) _cognitoUserPoolSchemaAttributeAttributeDataType
    , fmap (("DeveloperOnlyAttribute",) . toJSON) _cognitoUserPoolSchemaAttributeDeveloperOnlyAttribute
    , fmap (("Mutable",) . toJSON) _cognitoUserPoolSchemaAttributeMutable
    , fmap (("Name",) . toJSON) _cognitoUserPoolSchemaAttributeName
    , fmap (("NumberAttributeConstraints",) . toJSON) _cognitoUserPoolSchemaAttributeNumberAttributeConstraints
    , fmap (("Required",) . toJSON) _cognitoUserPoolSchemaAttributeRequired
    , fmap (("StringAttributeConstraints",) . toJSON) _cognitoUserPoolSchemaAttributeStringAttributeConstraints
    ]

-- | Constructor for 'CognitoUserPoolSchemaAttribute' containing required
-- fields as arguments.
cognitoUserPoolSchemaAttribute
  :: CognitoUserPoolSchemaAttribute
cognitoUserPoolSchemaAttribute  =
  CognitoUserPoolSchemaAttribute
  { _cognitoUserPoolSchemaAttributeAttributeDataType = Nothing
  , _cognitoUserPoolSchemaAttributeDeveloperOnlyAttribute = Nothing
  , _cognitoUserPoolSchemaAttributeMutable = Nothing
  , _cognitoUserPoolSchemaAttributeName = Nothing
  , _cognitoUserPoolSchemaAttributeNumberAttributeConstraints = Nothing
  , _cognitoUserPoolSchemaAttributeRequired = Nothing
  , _cognitoUserPoolSchemaAttributeStringAttributeConstraints = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-attributedatatype
cupsaAttributeDataType :: Lens' CognitoUserPoolSchemaAttribute (Maybe (Val Text))
cupsaAttributeDataType = lens _cognitoUserPoolSchemaAttributeAttributeDataType (\s a -> s { _cognitoUserPoolSchemaAttributeAttributeDataType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-developeronlyattribute
cupsaDeveloperOnlyAttribute :: Lens' CognitoUserPoolSchemaAttribute (Maybe (Val Bool))
cupsaDeveloperOnlyAttribute = lens _cognitoUserPoolSchemaAttributeDeveloperOnlyAttribute (\s a -> s { _cognitoUserPoolSchemaAttributeDeveloperOnlyAttribute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-mutable
cupsaMutable :: Lens' CognitoUserPoolSchemaAttribute (Maybe (Val Bool))
cupsaMutable = lens _cognitoUserPoolSchemaAttributeMutable (\s a -> s { _cognitoUserPoolSchemaAttributeMutable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-name
cupsaName :: Lens' CognitoUserPoolSchemaAttribute (Maybe (Val Text))
cupsaName = lens _cognitoUserPoolSchemaAttributeName (\s a -> s { _cognitoUserPoolSchemaAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-numberattributeconstraints
cupsaNumberAttributeConstraints :: Lens' CognitoUserPoolSchemaAttribute (Maybe CognitoUserPoolNumberAttributeConstraints)
cupsaNumberAttributeConstraints = lens _cognitoUserPoolSchemaAttributeNumberAttributeConstraints (\s a -> s { _cognitoUserPoolSchemaAttributeNumberAttributeConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-required
cupsaRequired :: Lens' CognitoUserPoolSchemaAttribute (Maybe (Val Bool))
cupsaRequired = lens _cognitoUserPoolSchemaAttributeRequired (\s a -> s { _cognitoUserPoolSchemaAttributeRequired = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-stringattributeconstraints
cupsaStringAttributeConstraints :: Lens' CognitoUserPoolSchemaAttribute (Maybe CognitoUserPoolStringAttributeConstraints)
cupsaStringAttributeConstraints = lens _cognitoUserPoolSchemaAttributeStringAttributeConstraints (\s a -> s { _cognitoUserPoolSchemaAttributeStringAttributeConstraints = a })
