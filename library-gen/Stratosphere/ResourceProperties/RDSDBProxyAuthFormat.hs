{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html

module Stratosphere.ResourceProperties.RDSDBProxyAuthFormat where

import Stratosphere.ResourceImports


-- | Full data type definition for RDSDBProxyAuthFormat. See
-- 'rdsdbProxyAuthFormat' for a more convenient constructor.
data RDSDBProxyAuthFormat =
  RDSDBProxyAuthFormat
  { _rDSDBProxyAuthFormatAuthScheme :: Maybe (Val Text)
  , _rDSDBProxyAuthFormatDescription :: Maybe (Val Text)
  , _rDSDBProxyAuthFormatIAMAuth :: Maybe (Val Text)
  , _rDSDBProxyAuthFormatSecretArn :: Maybe (Val Text)
  , _rDSDBProxyAuthFormatUserName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON RDSDBProxyAuthFormat where
  toJSON RDSDBProxyAuthFormat{..} =
    object $
    catMaybes
    [ fmap (("AuthScheme",) . toJSON) _rDSDBProxyAuthFormatAuthScheme
    , fmap (("Description",) . toJSON) _rDSDBProxyAuthFormatDescription
    , fmap (("IAMAuth",) . toJSON) _rDSDBProxyAuthFormatIAMAuth
    , fmap (("SecretArn",) . toJSON) _rDSDBProxyAuthFormatSecretArn
    , fmap (("UserName",) . toJSON) _rDSDBProxyAuthFormatUserName
    ]

-- | Constructor for 'RDSDBProxyAuthFormat' containing required fields as
-- arguments.
rdsdbProxyAuthFormat
  :: RDSDBProxyAuthFormat
rdsdbProxyAuthFormat  =
  RDSDBProxyAuthFormat
  { _rDSDBProxyAuthFormatAuthScheme = Nothing
  , _rDSDBProxyAuthFormatDescription = Nothing
  , _rDSDBProxyAuthFormatIAMAuth = Nothing
  , _rDSDBProxyAuthFormatSecretArn = Nothing
  , _rDSDBProxyAuthFormatUserName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-authscheme
rdsdbpafAuthScheme :: Lens' RDSDBProxyAuthFormat (Maybe (Val Text))
rdsdbpafAuthScheme = lens _rDSDBProxyAuthFormatAuthScheme (\s a -> s { _rDSDBProxyAuthFormatAuthScheme = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-description
rdsdbpafDescription :: Lens' RDSDBProxyAuthFormat (Maybe (Val Text))
rdsdbpafDescription = lens _rDSDBProxyAuthFormatDescription (\s a -> s { _rDSDBProxyAuthFormatDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-iamauth
rdsdbpafIAMAuth :: Lens' RDSDBProxyAuthFormat (Maybe (Val Text))
rdsdbpafIAMAuth = lens _rDSDBProxyAuthFormatIAMAuth (\s a -> s { _rDSDBProxyAuthFormatIAMAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-secretarn
rdsdbpafSecretArn :: Lens' RDSDBProxyAuthFormat (Maybe (Val Text))
rdsdbpafSecretArn = lens _rDSDBProxyAuthFormatSecretArn (\s a -> s { _rDSDBProxyAuthFormatSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-username
rdsdbpafUserName :: Lens' RDSDBProxyAuthFormat (Maybe (Val Text))
rdsdbpafUserName = lens _rDSDBProxyAuthFormatUserName (\s a -> s { _rDSDBProxyAuthFormatUserName = a })
