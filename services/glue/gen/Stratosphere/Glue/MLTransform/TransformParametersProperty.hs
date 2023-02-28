module Stratosphere.Glue.MLTransform.TransformParametersProperty (
        module Exports, TransformParametersProperty(..),
        mkTransformParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.MLTransform.FindMatchesParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformParametersProperty
  = TransformParametersProperty {findMatchesParameters :: (Prelude.Maybe FindMatchesParametersProperty),
                                 transformType :: (Value Prelude.Text)}
mkTransformParametersProperty ::
  Value Prelude.Text -> TransformParametersProperty
mkTransformParametersProperty transformType
  = TransformParametersProperty
      {transformType = transformType,
       findMatchesParameters = Prelude.Nothing}
instance ToResourceProperties TransformParametersProperty where
  toResourceProperties TransformParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.TransformParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TransformType" JSON..= transformType]
                           (Prelude.catMaybes
                              [(JSON..=) "FindMatchesParameters"
                                 Prelude.<$> findMatchesParameters]))}
instance JSON.ToJSON TransformParametersProperty where
  toJSON TransformParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TransformType" JSON..= transformType]
              (Prelude.catMaybes
                 [(JSON..=) "FindMatchesParameters"
                    Prelude.<$> findMatchesParameters])))
instance Property "FindMatchesParameters" TransformParametersProperty where
  type PropertyType "FindMatchesParameters" TransformParametersProperty = FindMatchesParametersProperty
  set newValue TransformParametersProperty {..}
    = TransformParametersProperty
        {findMatchesParameters = Prelude.pure newValue, ..}
instance Property "TransformType" TransformParametersProperty where
  type PropertyType "TransformType" TransformParametersProperty = Value Prelude.Text
  set newValue TransformParametersProperty {..}
    = TransformParametersProperty {transformType = newValue, ..}