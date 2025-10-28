module Stratosphere.S3.Bucket.IntelligentTieringConfigurationProperty (
        module Exports, IntelligentTieringConfigurationProperty(..),
        mkIntelligentTieringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.TagFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.TieringProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntelligentTieringConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-intelligenttieringconfiguration.html>
    IntelligentTieringConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-intelligenttieringconfiguration.html#cfn-s3-bucket-intelligenttieringconfiguration-id>
                                             id :: (Value Prelude.Text),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-intelligenttieringconfiguration.html#cfn-s3-bucket-intelligenttieringconfiguration-prefix>
                                             prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-intelligenttieringconfiguration.html#cfn-s3-bucket-intelligenttieringconfiguration-status>
                                             status :: (Value Prelude.Text),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-intelligenttieringconfiguration.html#cfn-s3-bucket-intelligenttieringconfiguration-tagfilters>
                                             tagFilters :: (Prelude.Maybe [TagFilterProperty]),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-intelligenttieringconfiguration.html#cfn-s3-bucket-intelligenttieringconfiguration-tierings>
                                             tierings :: [TieringProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntelligentTieringConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [TieringProperty] -> IntelligentTieringConfigurationProperty
mkIntelligentTieringConfigurationProperty id status tierings
  = IntelligentTieringConfigurationProperty
      {id = id, status = status, tierings = tierings,
       prefix = Prelude.Nothing, tagFilters = Prelude.Nothing}
instance ToResourceProperties IntelligentTieringConfigurationProperty where
  toResourceProperties IntelligentTieringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.IntelligentTieringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "Status" JSON..= status,
                            "Tierings" JSON..= tierings]
                           (Prelude.catMaybes
                              [(JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "TagFilters" Prelude.<$> tagFilters]))}
instance JSON.ToJSON IntelligentTieringConfigurationProperty where
  toJSON IntelligentTieringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "Status" JSON..= status,
               "Tierings" JSON..= tierings]
              (Prelude.catMaybes
                 [(JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "TagFilters" Prelude.<$> tagFilters])))
instance Property "Id" IntelligentTieringConfigurationProperty where
  type PropertyType "Id" IntelligentTieringConfigurationProperty = Value Prelude.Text
  set newValue IntelligentTieringConfigurationProperty {..}
    = IntelligentTieringConfigurationProperty {id = newValue, ..}
instance Property "Prefix" IntelligentTieringConfigurationProperty where
  type PropertyType "Prefix" IntelligentTieringConfigurationProperty = Value Prelude.Text
  set newValue IntelligentTieringConfigurationProperty {..}
    = IntelligentTieringConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "Status" IntelligentTieringConfigurationProperty where
  type PropertyType "Status" IntelligentTieringConfigurationProperty = Value Prelude.Text
  set newValue IntelligentTieringConfigurationProperty {..}
    = IntelligentTieringConfigurationProperty {status = newValue, ..}
instance Property "TagFilters" IntelligentTieringConfigurationProperty where
  type PropertyType "TagFilters" IntelligentTieringConfigurationProperty = [TagFilterProperty]
  set newValue IntelligentTieringConfigurationProperty {..}
    = IntelligentTieringConfigurationProperty
        {tagFilters = Prelude.pure newValue, ..}
instance Property "Tierings" IntelligentTieringConfigurationProperty where
  type PropertyType "Tierings" IntelligentTieringConfigurationProperty = [TieringProperty]
  set newValue IntelligentTieringConfigurationProperty {..}
    = IntelligentTieringConfigurationProperty {tierings = newValue, ..}