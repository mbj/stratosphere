{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html

module Stratosphere.Resources.SDBDomain where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for SDBDomain. See 'sdbDomain' for a more
-- convenient constructor.
data SDBDomain =
  SDBDomain
  { _sDBDomainDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SDBDomain where
  toJSON SDBDomain{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _sDBDomainDescription
    ]

instance FromJSON SDBDomain where
  parseJSON (Object obj) =
    SDBDomain <$>
      (obj .:? "Description")
  parseJSON _ = mempty

-- | Constructor for 'SDBDomain' containing required fields as arguments.
sdbDomain
  :: SDBDomain
sdbDomain  =
  SDBDomain
  { _sDBDomainDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html#cfn-sdb-domain-description
sdbdDescription :: Lens' SDBDomain (Maybe (Val Text))
sdbdDescription = lens _sDBDomainDescription (\s a -> s { _sDBDomainDescription = a })
