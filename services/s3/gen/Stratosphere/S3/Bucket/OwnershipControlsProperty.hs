module Stratosphere.S3.Bucket.OwnershipControlsProperty (
        module Exports, OwnershipControlsProperty(..),
        mkOwnershipControlsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.OwnershipControlsRuleProperty as Exports
import Stratosphere.ResourceProperties
data OwnershipControlsProperty
  = OwnershipControlsProperty {rules :: [OwnershipControlsRuleProperty]}
mkOwnershipControlsProperty ::
  [OwnershipControlsRuleProperty] -> OwnershipControlsProperty
mkOwnershipControlsProperty rules
  = OwnershipControlsProperty {rules = rules}
instance ToResourceProperties OwnershipControlsProperty where
  toResourceProperties OwnershipControlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.OwnershipControls",
         properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON OwnershipControlsProperty where
  toJSON OwnershipControlsProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" OwnershipControlsProperty where
  type PropertyType "Rules" OwnershipControlsProperty = [OwnershipControlsRuleProperty]
  set newValue OwnershipControlsProperty {}
    = OwnershipControlsProperty {rules = newValue, ..}