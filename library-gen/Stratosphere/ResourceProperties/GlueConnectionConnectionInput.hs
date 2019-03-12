{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html

module Stratosphere.ResourceProperties.GlueConnectionConnectionInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueConnectionPhysicalConnectionRequirements

-- | Full data type definition for GlueConnectionConnectionInput. See
-- 'glueConnectionConnectionInput' for a more convenient constructor.
data GlueConnectionConnectionInput =
  GlueConnectionConnectionInput
  { _glueConnectionConnectionInputConnectionProperties :: Object
  , _glueConnectionConnectionInputConnectionType :: Val Text
  , _glueConnectionConnectionInputDescription :: Maybe (Val Text)
  , _glueConnectionConnectionInputMatchCriteria :: Maybe (ValList Text)
  , _glueConnectionConnectionInputName :: Maybe (Val Text)
  , _glueConnectionConnectionInputPhysicalConnectionRequirements :: Maybe GlueConnectionPhysicalConnectionRequirements
  } deriving (Show, Eq)

instance ToJSON GlueConnectionConnectionInput where
  toJSON GlueConnectionConnectionInput{..} =
    object $
    catMaybes
    [ (Just . ("ConnectionProperties",) . toJSON) _glueConnectionConnectionInputConnectionProperties
    , (Just . ("ConnectionType",) . toJSON) _glueConnectionConnectionInputConnectionType
    , fmap (("Description",) . toJSON) _glueConnectionConnectionInputDescription
    , fmap (("MatchCriteria",) . toJSON) _glueConnectionConnectionInputMatchCriteria
    , fmap (("Name",) . toJSON) _glueConnectionConnectionInputName
    , fmap (("PhysicalConnectionRequirements",) . toJSON) _glueConnectionConnectionInputPhysicalConnectionRequirements
    ]

-- | Constructor for 'GlueConnectionConnectionInput' containing required
-- fields as arguments.
glueConnectionConnectionInput
  :: Object -- ^ 'gcciConnectionProperties'
  -> Val Text -- ^ 'gcciConnectionType'
  -> GlueConnectionConnectionInput
glueConnectionConnectionInput connectionPropertiesarg connectionTypearg =
  GlueConnectionConnectionInput
  { _glueConnectionConnectionInputConnectionProperties = connectionPropertiesarg
  , _glueConnectionConnectionInputConnectionType = connectionTypearg
  , _glueConnectionConnectionInputDescription = Nothing
  , _glueConnectionConnectionInputMatchCriteria = Nothing
  , _glueConnectionConnectionInputName = Nothing
  , _glueConnectionConnectionInputPhysicalConnectionRequirements = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectionproperties
gcciConnectionProperties :: Lens' GlueConnectionConnectionInput Object
gcciConnectionProperties = lens _glueConnectionConnectionInputConnectionProperties (\s a -> s { _glueConnectionConnectionInputConnectionProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectiontype
gcciConnectionType :: Lens' GlueConnectionConnectionInput (Val Text)
gcciConnectionType = lens _glueConnectionConnectionInputConnectionType (\s a -> s { _glueConnectionConnectionInputConnectionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-description
gcciDescription :: Lens' GlueConnectionConnectionInput (Maybe (Val Text))
gcciDescription = lens _glueConnectionConnectionInputDescription (\s a -> s { _glueConnectionConnectionInputDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-matchcriteria
gcciMatchCriteria :: Lens' GlueConnectionConnectionInput (Maybe (ValList Text))
gcciMatchCriteria = lens _glueConnectionConnectionInputMatchCriteria (\s a -> s { _glueConnectionConnectionInputMatchCriteria = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-name
gcciName :: Lens' GlueConnectionConnectionInput (Maybe (Val Text))
gcciName = lens _glueConnectionConnectionInputName (\s a -> s { _glueConnectionConnectionInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-physicalconnectionrequirements
gcciPhysicalConnectionRequirements :: Lens' GlueConnectionConnectionInput (Maybe GlueConnectionPhysicalConnectionRequirements)
gcciPhysicalConnectionRequirements = lens _glueConnectionConnectionInputPhysicalConnectionRequirements (\s a -> s { _glueConnectionConnectionInputPhysicalConnectionRequirements = a })
