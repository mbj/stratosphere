module Stratosphere.CloudFront.Distribution.StringSchemaProperty (
        StringSchemaProperty(..), mkStringSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-stringschema.html>
    StringSchemaProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-stringschema.html#cfn-cloudfront-distribution-stringschema-comment>
                          comment :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-stringschema.html#cfn-cloudfront-distribution-stringschema-defaultvalue>
                          defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-stringschema.html#cfn-cloudfront-distribution-stringschema-required>
                          required :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringSchemaProperty ::
  Value Prelude.Bool -> StringSchemaProperty
mkStringSchemaProperty required
  = StringSchemaProperty
      {haddock_workaround_ = (), required = required,
       comment = Prelude.Nothing, defaultValue = Prelude.Nothing}
instance ToResourceProperties StringSchemaProperty where
  toResourceProperties StringSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.StringSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Required" JSON..= required]
                           (Prelude.catMaybes
                              [(JSON..=) "Comment" Prelude.<$> comment,
                               (JSON..=) "DefaultValue" Prelude.<$> defaultValue]))}
instance JSON.ToJSON StringSchemaProperty where
  toJSON StringSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Required" JSON..= required]
              (Prelude.catMaybes
                 [(JSON..=) "Comment" Prelude.<$> comment,
                  (JSON..=) "DefaultValue" Prelude.<$> defaultValue])))
instance Property "Comment" StringSchemaProperty where
  type PropertyType "Comment" StringSchemaProperty = Value Prelude.Text
  set newValue StringSchemaProperty {..}
    = StringSchemaProperty {comment = Prelude.pure newValue, ..}
instance Property "DefaultValue" StringSchemaProperty where
  type PropertyType "DefaultValue" StringSchemaProperty = Value Prelude.Text
  set newValue StringSchemaProperty {..}
    = StringSchemaProperty {defaultValue = Prelude.pure newValue, ..}
instance Property "Required" StringSchemaProperty where
  type PropertyType "Required" StringSchemaProperty = Value Prelude.Bool
  set newValue StringSchemaProperty {..}
    = StringSchemaProperty {required = newValue, ..}