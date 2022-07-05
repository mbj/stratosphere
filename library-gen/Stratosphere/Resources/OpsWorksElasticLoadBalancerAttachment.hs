{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-elbattachment.html

module Stratosphere.Resources.OpsWorksElasticLoadBalancerAttachment where

import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksElasticLoadBalancerAttachment. See
-- 'opsWorksElasticLoadBalancerAttachment' for a more convenient
-- constructor.
data OpsWorksElasticLoadBalancerAttachment =
  OpsWorksElasticLoadBalancerAttachment
  { _opsWorksElasticLoadBalancerAttachmentElasticLoadBalancerName :: Val Text
  , _opsWorksElasticLoadBalancerAttachmentLayerId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties OpsWorksElasticLoadBalancerAttachment where
  toResourceProperties OpsWorksElasticLoadBalancerAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::OpsWorks::ElasticLoadBalancerAttachment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ElasticLoadBalancerName",) . toJSON) _opsWorksElasticLoadBalancerAttachmentElasticLoadBalancerName
        , (Just . ("LayerId",) . toJSON) _opsWorksElasticLoadBalancerAttachmentLayerId
        ]
    }

-- | Constructor for 'OpsWorksElasticLoadBalancerAttachment' containing
-- required fields as arguments.
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
