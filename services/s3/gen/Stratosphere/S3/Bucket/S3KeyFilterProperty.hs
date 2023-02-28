module Stratosphere.S3.Bucket.S3KeyFilterProperty (
        module Exports, S3KeyFilterProperty(..), mkS3KeyFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.FilterRuleProperty as Exports
import Stratosphere.ResourceProperties
data S3KeyFilterProperty
  = S3KeyFilterProperty {rules :: [FilterRuleProperty]}
mkS3KeyFilterProperty ::
  [FilterRuleProperty] -> S3KeyFilterProperty
mkS3KeyFilterProperty rules = S3KeyFilterProperty {rules = rules}
instance ToResourceProperties S3KeyFilterProperty where
  toResourceProperties S3KeyFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.S3KeyFilter",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON S3KeyFilterProperty where
  toJSON S3KeyFilterProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" S3KeyFilterProperty where
  type PropertyType "Rules" S3KeyFilterProperty = [FilterRuleProperty]
  set newValue S3KeyFilterProperty {}
    = S3KeyFilterProperty {rules = newValue, ..}