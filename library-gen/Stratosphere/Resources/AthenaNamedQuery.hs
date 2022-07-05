{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html

module Stratosphere.Resources.AthenaNamedQuery where

import Stratosphere.ResourceImports


-- | Full data type definition for AthenaNamedQuery. See 'athenaNamedQuery'
-- for a more convenient constructor.
data AthenaNamedQuery =
  AthenaNamedQuery
  { _athenaNamedQueryDatabase :: Val Text
  , _athenaNamedQueryDescription :: Maybe (Val Text)
  , _athenaNamedQueryName :: Maybe (Val Text)
  , _athenaNamedQueryQueryString :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AthenaNamedQuery where
  toResourceProperties AthenaNamedQuery{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Athena::NamedQuery"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Database",) . toJSON) _athenaNamedQueryDatabase
        , fmap (("Description",) . toJSON) _athenaNamedQueryDescription
        , fmap (("Name",) . toJSON) _athenaNamedQueryName
        , (Just . ("QueryString",) . toJSON) _athenaNamedQueryQueryString
        ]
    }

-- | Constructor for 'AthenaNamedQuery' containing required fields as
-- arguments.
athenaNamedQuery
  :: Val Text -- ^ 'anqDatabase'
  -> Val Text -- ^ 'anqQueryString'
  -> AthenaNamedQuery
athenaNamedQuery databasearg queryStringarg =
  AthenaNamedQuery
  { _athenaNamedQueryDatabase = databasearg
  , _athenaNamedQueryDescription = Nothing
  , _athenaNamedQueryName = Nothing
  , _athenaNamedQueryQueryString = queryStringarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-database
anqDatabase :: Lens' AthenaNamedQuery (Val Text)
anqDatabase = lens _athenaNamedQueryDatabase (\s a -> s { _athenaNamedQueryDatabase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-description
anqDescription :: Lens' AthenaNamedQuery (Maybe (Val Text))
anqDescription = lens _athenaNamedQueryDescription (\s a -> s { _athenaNamedQueryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-name
anqName :: Lens' AthenaNamedQuery (Maybe (Val Text))
anqName = lens _athenaNamedQueryName (\s a -> s { _athenaNamedQueryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-querystring
anqQueryString :: Lens' AthenaNamedQuery (Val Text)
anqQueryString = lens _athenaNamedQueryQueryString (\s a -> s { _athenaNamedQueryQueryString = a })
