{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html

module Stratosphere.ResourceProperties.GlueDatabaseDatabaseInput where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueDatabaseDatabaseInput. See
-- 'glueDatabaseDatabaseInput' for a more convenient constructor.
data GlueDatabaseDatabaseInput =
  GlueDatabaseDatabaseInput
  { _glueDatabaseDatabaseInputDescription :: Maybe (Val Text)
  , _glueDatabaseDatabaseInputLocationUri :: Maybe (Val Text)
  , _glueDatabaseDatabaseInputName :: Maybe (Val Text)
  , _glueDatabaseDatabaseInputParameters :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON GlueDatabaseDatabaseInput where
  toJSON GlueDatabaseDatabaseInput{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _glueDatabaseDatabaseInputDescription
    , fmap (("LocationUri",) . toJSON) _glueDatabaseDatabaseInputLocationUri
    , fmap (("Name",) . toJSON) _glueDatabaseDatabaseInputName
    , fmap (("Parameters",) . toJSON) _glueDatabaseDatabaseInputParameters
    ]

-- | Constructor for 'GlueDatabaseDatabaseInput' containing required fields as
-- arguments.
glueDatabaseDatabaseInput
  :: GlueDatabaseDatabaseInput
glueDatabaseDatabaseInput  =
  GlueDatabaseDatabaseInput
  { _glueDatabaseDatabaseInputDescription = Nothing
  , _glueDatabaseDatabaseInputLocationUri = Nothing
  , _glueDatabaseDatabaseInputName = Nothing
  , _glueDatabaseDatabaseInputParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-description
gddiDescription :: Lens' GlueDatabaseDatabaseInput (Maybe (Val Text))
gddiDescription = lens _glueDatabaseDatabaseInputDescription (\s a -> s { _glueDatabaseDatabaseInputDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-locationuri
gddiLocationUri :: Lens' GlueDatabaseDatabaseInput (Maybe (Val Text))
gddiLocationUri = lens _glueDatabaseDatabaseInputLocationUri (\s a -> s { _glueDatabaseDatabaseInputLocationUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-name
gddiName :: Lens' GlueDatabaseDatabaseInput (Maybe (Val Text))
gddiName = lens _glueDatabaseDatabaseInputName (\s a -> s { _glueDatabaseDatabaseInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-parameters
gddiParameters :: Lens' GlueDatabaseDatabaseInput (Maybe Object)
gddiParameters = lens _glueDatabaseDatabaseInputParameters (\s a -> s { _glueDatabaseDatabaseInputParameters = a })
