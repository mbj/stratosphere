module Stratosphere.CloudFront.Distribution.DefinitionProperty (
        module Exports, DefinitionProperty(..), mkDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.StringSchemaProperty as Exports
import Stratosphere.ResourceProperties
data DefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-definition.html>
    DefinitionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-definition.html#cfn-cloudfront-distribution-definition-stringschema>
                        stringSchema :: (Prelude.Maybe StringSchemaProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefinitionProperty :: DefinitionProperty
mkDefinitionProperty
  = DefinitionProperty
      {haddock_workaround_ = (), stringSchema = Prelude.Nothing}
instance ToResourceProperties DefinitionProperty where
  toResourceProperties DefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Definition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StringSchema" Prelude.<$> stringSchema])}
instance JSON.ToJSON DefinitionProperty where
  toJSON DefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StringSchema" Prelude.<$> stringSchema]))
instance Property "StringSchema" DefinitionProperty where
  type PropertyType "StringSchema" DefinitionProperty = StringSchemaProperty
  set newValue DefinitionProperty {..}
    = DefinitionProperty {stringSchema = Prelude.pure newValue, ..}