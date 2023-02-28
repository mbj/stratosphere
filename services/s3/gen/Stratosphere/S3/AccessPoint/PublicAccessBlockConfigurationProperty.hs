module Stratosphere.S3.AccessPoint.PublicAccessBlockConfigurationProperty (
        PublicAccessBlockConfigurationProperty(..),
        mkPublicAccessBlockConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicAccessBlockConfigurationProperty
  = PublicAccessBlockConfigurationProperty {blockPublicAcls :: (Prelude.Maybe (Value Prelude.Bool)),
                                            blockPublicPolicy :: (Prelude.Maybe (Value Prelude.Bool)),
                                            ignorePublicAcls :: (Prelude.Maybe (Value Prelude.Bool)),
                                            restrictPublicBuckets :: (Prelude.Maybe (Value Prelude.Bool))}
mkPublicAccessBlockConfigurationProperty ::
  PublicAccessBlockConfigurationProperty
mkPublicAccessBlockConfigurationProperty
  = PublicAccessBlockConfigurationProperty
      {blockPublicAcls = Prelude.Nothing,
       blockPublicPolicy = Prelude.Nothing,
       ignorePublicAcls = Prelude.Nothing,
       restrictPublicBuckets = Prelude.Nothing}
instance ToResourceProperties PublicAccessBlockConfigurationProperty where
  toResourceProperties PublicAccessBlockConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessPoint.PublicAccessBlockConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockPublicAcls" Prelude.<$> blockPublicAcls,
                            (JSON..=) "BlockPublicPolicy" Prelude.<$> blockPublicPolicy,
                            (JSON..=) "IgnorePublicAcls" Prelude.<$> ignorePublicAcls,
                            (JSON..=) "RestrictPublicBuckets"
                              Prelude.<$> restrictPublicBuckets])}
instance JSON.ToJSON PublicAccessBlockConfigurationProperty where
  toJSON PublicAccessBlockConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockPublicAcls" Prelude.<$> blockPublicAcls,
               (JSON..=) "BlockPublicPolicy" Prelude.<$> blockPublicPolicy,
               (JSON..=) "IgnorePublicAcls" Prelude.<$> ignorePublicAcls,
               (JSON..=) "RestrictPublicBuckets"
                 Prelude.<$> restrictPublicBuckets]))
instance Property "BlockPublicAcls" PublicAccessBlockConfigurationProperty where
  type PropertyType "BlockPublicAcls" PublicAccessBlockConfigurationProperty = Value Prelude.Bool
  set newValue PublicAccessBlockConfigurationProperty {..}
    = PublicAccessBlockConfigurationProperty
        {blockPublicAcls = Prelude.pure newValue, ..}
instance Property "BlockPublicPolicy" PublicAccessBlockConfigurationProperty where
  type PropertyType "BlockPublicPolicy" PublicAccessBlockConfigurationProperty = Value Prelude.Bool
  set newValue PublicAccessBlockConfigurationProperty {..}
    = PublicAccessBlockConfigurationProperty
        {blockPublicPolicy = Prelude.pure newValue, ..}
instance Property "IgnorePublicAcls" PublicAccessBlockConfigurationProperty where
  type PropertyType "IgnorePublicAcls" PublicAccessBlockConfigurationProperty = Value Prelude.Bool
  set newValue PublicAccessBlockConfigurationProperty {..}
    = PublicAccessBlockConfigurationProperty
        {ignorePublicAcls = Prelude.pure newValue, ..}
instance Property "RestrictPublicBuckets" PublicAccessBlockConfigurationProperty where
  type PropertyType "RestrictPublicBuckets" PublicAccessBlockConfigurationProperty = Value Prelude.Bool
  set newValue PublicAccessBlockConfigurationProperty {..}
    = PublicAccessBlockConfigurationProperty
        {restrictPublicBuckets = Prelude.pure newValue, ..}