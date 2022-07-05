{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html

module Stratosphere.Resources.SDBDomain where

import Stratosphere.ResourceImports


-- | Full data type definition for SDBDomain. See 'sdbDomain' for a more
-- convenient constructor.
data SDBDomain =
  SDBDomain
  { _sDBDomainDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SDBDomain where
  toResourceProperties SDBDomain{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SDB::Domain"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _sDBDomainDescription
        ]
    }

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
