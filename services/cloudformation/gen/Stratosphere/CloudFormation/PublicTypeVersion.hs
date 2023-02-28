module Stratosphere.CloudFormation.PublicTypeVersion (
        PublicTypeVersion(..), mkPublicTypeVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PublicTypeVersion
  = PublicTypeVersion {arn :: (Prelude.Maybe (Value Prelude.Text)),
                       logDeliveryBucket :: (Prelude.Maybe (Value Prelude.Text)),
                       publicVersionNumber :: (Prelude.Maybe (Value Prelude.Text)),
                       type' :: (Prelude.Maybe (Value Prelude.Text)),
                       typeName :: (Prelude.Maybe (Value Prelude.Text))}
mkPublicTypeVersion :: PublicTypeVersion
mkPublicTypeVersion
  = PublicTypeVersion
      {arn = Prelude.Nothing, logDeliveryBucket = Prelude.Nothing,
       publicVersionNumber = Prelude.Nothing, type' = Prelude.Nothing,
       typeName = Prelude.Nothing}
instance ToResourceProperties PublicTypeVersion where
  toResourceProperties PublicTypeVersion {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::PublicTypeVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "LogDeliveryBucket" Prelude.<$> logDeliveryBucket,
                            (JSON..=) "PublicVersionNumber" Prelude.<$> publicVersionNumber,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "TypeName" Prelude.<$> typeName])}
instance JSON.ToJSON PublicTypeVersion where
  toJSON PublicTypeVersion {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "LogDeliveryBucket" Prelude.<$> logDeliveryBucket,
               (JSON..=) "PublicVersionNumber" Prelude.<$> publicVersionNumber,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "TypeName" Prelude.<$> typeName]))
instance Property "Arn" PublicTypeVersion where
  type PropertyType "Arn" PublicTypeVersion = Value Prelude.Text
  set newValue PublicTypeVersion {..}
    = PublicTypeVersion {arn = Prelude.pure newValue, ..}
instance Property "LogDeliveryBucket" PublicTypeVersion where
  type PropertyType "LogDeliveryBucket" PublicTypeVersion = Value Prelude.Text
  set newValue PublicTypeVersion {..}
    = PublicTypeVersion {logDeliveryBucket = Prelude.pure newValue, ..}
instance Property "PublicVersionNumber" PublicTypeVersion where
  type PropertyType "PublicVersionNumber" PublicTypeVersion = Value Prelude.Text
  set newValue PublicTypeVersion {..}
    = PublicTypeVersion
        {publicVersionNumber = Prelude.pure newValue, ..}
instance Property "Type" PublicTypeVersion where
  type PropertyType "Type" PublicTypeVersion = Value Prelude.Text
  set newValue PublicTypeVersion {..}
    = PublicTypeVersion {type' = Prelude.pure newValue, ..}
instance Property "TypeName" PublicTypeVersion where
  type PropertyType "TypeName" PublicTypeVersion = Value Prelude.Text
  set newValue PublicTypeVersion {..}
    = PublicTypeVersion {typeName = Prelude.pure newValue, ..}