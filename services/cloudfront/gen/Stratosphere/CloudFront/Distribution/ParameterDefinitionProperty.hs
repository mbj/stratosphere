module Stratosphere.CloudFront.Distribution.ParameterDefinitionProperty (
        module Exports, ParameterDefinitionProperty(..),
        mkParameterDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.DefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-parameterdefinition.html>
    ParameterDefinitionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-parameterdefinition.html#cfn-cloudfront-distribution-parameterdefinition-definition>
                                 definition :: DefinitionProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-parameterdefinition.html#cfn-cloudfront-distribution-parameterdefinition-name>
                                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterDefinitionProperty ::
  DefinitionProperty
  -> Value Prelude.Text -> ParameterDefinitionProperty
mkParameterDefinitionProperty definition name
  = ParameterDefinitionProperty
      {haddock_workaround_ = (), definition = definition, name = name}
instance ToResourceProperties ParameterDefinitionProperty where
  toResourceProperties ParameterDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.ParameterDefinition",
         supportsTags = Prelude.False,
         properties = ["Definition" JSON..= definition,
                       "Name" JSON..= name]}
instance JSON.ToJSON ParameterDefinitionProperty where
  toJSON ParameterDefinitionProperty {..}
    = JSON.object
        ["Definition" JSON..= definition, "Name" JSON..= name]
instance Property "Definition" ParameterDefinitionProperty where
  type PropertyType "Definition" ParameterDefinitionProperty = DefinitionProperty
  set newValue ParameterDefinitionProperty {..}
    = ParameterDefinitionProperty {definition = newValue, ..}
instance Property "Name" ParameterDefinitionProperty where
  type PropertyType "Name" ParameterDefinitionProperty = Value Prelude.Text
  set newValue ParameterDefinitionProperty {..}
    = ParameterDefinitionProperty {name = newValue, ..}