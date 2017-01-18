{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html

module Stratosphere.Resources.OpsWorksElasticLoadBalancerAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksElasticLoadBalancerAttachment. See
-- | 'opsWorksElasticLoadBalancerAttachment' for a more convenient
-- | constructor.
data OpsWorksElasticLoadBalancerAttachment =
  OpsWorksElasticLoadBalancerAttachment
  { _opsWorksElasticLoadBalancerAttachmentElasticLoadBalancerName :: Val Text
  , _opsWorksElasticLoadBalancerAttachmentLayerId :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON OpsWorksElasticLoadBalancerAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON OpsWorksElasticLoadBalancerAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'OpsWorksElasticLoadBalancerAttachment' containing
-- | required fields as arguments.
opsWorksElasticLoadBalancerAttachment
  :: Val Text -- ^ 'owelbaElasticLoadBalancerName'
  -> Val Text -- ^ 'owelbaLayerId'
  -> OpsWorksElasticLoadBalancerAttachment
opsWorksElasticLoadBalancerAttachment elasticLoadBalancerNamearg layerIdarg =
  OpsWorksElasticLoadBalancerAttachment
  { _opsWorksElasticLoadBalancerAttachmentElasticLoadBalancerName = elasticLoadBalancerNamearg
  , _opsWorksElasticLoadBalancerAttachmentLayerId = layerIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-elbname
owelbaElasticLoadBalancerName :: Lens' OpsWorksElasticLoadBalancerAttachment (Val Text)
owelbaElasticLoadBalancerName = lens _opsWorksElasticLoadBalancerAttachmentElasticLoadBalancerName (\s a -> s { _opsWorksElasticLoadBalancerAttachmentElasticLoadBalancerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html#cfn-opsworks-elbattachment-layerid
owelbaLayerId :: Lens' OpsWorksElasticLoadBalancerAttachment (Val Text)
owelbaLayerId = lens _opsWorksElasticLoadBalancerAttachmentLayerId (\s a -> s { _opsWorksElasticLoadBalancerAttachmentLayerId = a })
