module Stratosphere.SageMaker.EndpointConfig.ClarifyShapBaselineConfigProperty (
        ClarifyShapBaselineConfigProperty(..),
        mkClarifyShapBaselineConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClarifyShapBaselineConfigProperty
  = ClarifyShapBaselineConfigProperty {mimeType :: (Prelude.Maybe (Value Prelude.Text)),
                                       shapBaseline :: (Prelude.Maybe (Value Prelude.Text)),
                                       shapBaselineUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClarifyShapBaselineConfigProperty ::
  ClarifyShapBaselineConfigProperty
mkClarifyShapBaselineConfigProperty
  = ClarifyShapBaselineConfigProperty
      {mimeType = Prelude.Nothing, shapBaseline = Prelude.Nothing,
       shapBaselineUri = Prelude.Nothing}
instance ToResourceProperties ClarifyShapBaselineConfigProperty where
  toResourceProperties ClarifyShapBaselineConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ClarifyShapBaselineConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MimeType" Prelude.<$> mimeType,
                            (JSON..=) "ShapBaseline" Prelude.<$> shapBaseline,
                            (JSON..=) "ShapBaselineUri" Prelude.<$> shapBaselineUri])}
instance JSON.ToJSON ClarifyShapBaselineConfigProperty where
  toJSON ClarifyShapBaselineConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MimeType" Prelude.<$> mimeType,
               (JSON..=) "ShapBaseline" Prelude.<$> shapBaseline,
               (JSON..=) "ShapBaselineUri" Prelude.<$> shapBaselineUri]))
instance Property "MimeType" ClarifyShapBaselineConfigProperty where
  type PropertyType "MimeType" ClarifyShapBaselineConfigProperty = Value Prelude.Text
  set newValue ClarifyShapBaselineConfigProperty {..}
    = ClarifyShapBaselineConfigProperty
        {mimeType = Prelude.pure newValue, ..}
instance Property "ShapBaseline" ClarifyShapBaselineConfigProperty where
  type PropertyType "ShapBaseline" ClarifyShapBaselineConfigProperty = Value Prelude.Text
  set newValue ClarifyShapBaselineConfigProperty {..}
    = ClarifyShapBaselineConfigProperty
        {shapBaseline = Prelude.pure newValue, ..}
instance Property "ShapBaselineUri" ClarifyShapBaselineConfigProperty where
  type PropertyType "ShapBaselineUri" ClarifyShapBaselineConfigProperty = Value Prelude.Text
  set newValue ClarifyShapBaselineConfigProperty {..}
    = ClarifyShapBaselineConfigProperty
        {shapBaselineUri = Prelude.pure newValue, ..}