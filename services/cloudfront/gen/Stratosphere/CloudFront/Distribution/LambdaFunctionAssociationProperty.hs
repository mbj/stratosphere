module Stratosphere.CloudFront.Distribution.LambdaFunctionAssociationProperty (
        LambdaFunctionAssociationProperty(..),
        mkLambdaFunctionAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaFunctionAssociationProperty
  = LambdaFunctionAssociationProperty {eventType :: (Prelude.Maybe (Value Prelude.Text)),
                                       includeBody :: (Prelude.Maybe (Value Prelude.Bool)),
                                       lambdaFunctionARN :: (Prelude.Maybe (Value Prelude.Text))}
mkLambdaFunctionAssociationProperty ::
  LambdaFunctionAssociationProperty
mkLambdaFunctionAssociationProperty
  = LambdaFunctionAssociationProperty
      {eventType = Prelude.Nothing, includeBody = Prelude.Nothing,
       lambdaFunctionARN = Prelude.Nothing}
instance ToResourceProperties LambdaFunctionAssociationProperty where
  toResourceProperties LambdaFunctionAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.LambdaFunctionAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EventType" Prelude.<$> eventType,
                            (JSON..=) "IncludeBody" Prelude.<$> includeBody,
                            (JSON..=) "LambdaFunctionARN" Prelude.<$> lambdaFunctionARN])}
instance JSON.ToJSON LambdaFunctionAssociationProperty where
  toJSON LambdaFunctionAssociationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EventType" Prelude.<$> eventType,
               (JSON..=) "IncludeBody" Prelude.<$> includeBody,
               (JSON..=) "LambdaFunctionARN" Prelude.<$> lambdaFunctionARN]))
instance Property "EventType" LambdaFunctionAssociationProperty where
  type PropertyType "EventType" LambdaFunctionAssociationProperty = Value Prelude.Text
  set newValue LambdaFunctionAssociationProperty {..}
    = LambdaFunctionAssociationProperty
        {eventType = Prelude.pure newValue, ..}
instance Property "IncludeBody" LambdaFunctionAssociationProperty where
  type PropertyType "IncludeBody" LambdaFunctionAssociationProperty = Value Prelude.Bool
  set newValue LambdaFunctionAssociationProperty {..}
    = LambdaFunctionAssociationProperty
        {includeBody = Prelude.pure newValue, ..}
instance Property "LambdaFunctionARN" LambdaFunctionAssociationProperty where
  type PropertyType "LambdaFunctionARN" LambdaFunctionAssociationProperty = Value Prelude.Text
  set newValue LambdaFunctionAssociationProperty {..}
    = LambdaFunctionAssociationProperty
        {lambdaFunctionARN = Prelude.pure newValue, ..}