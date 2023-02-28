module Stratosphere.SageMaker.EndpointConfig.ClarifyShapConfigProperty (
        module Exports, ClarifyShapConfigProperty(..),
        mkClarifyShapConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyShapBaselineConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyTextConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClarifyShapConfigProperty
  = ClarifyShapConfigProperty {numberOfSamples :: (Prelude.Maybe (Value Prelude.Integer)),
                               seed :: (Prelude.Maybe (Value Prelude.Integer)),
                               shapBaselineConfig :: ClarifyShapBaselineConfigProperty,
                               textConfig :: (Prelude.Maybe ClarifyTextConfigProperty),
                               useLogit :: (Prelude.Maybe (Value Prelude.Bool))}
mkClarifyShapConfigProperty ::
  ClarifyShapBaselineConfigProperty -> ClarifyShapConfigProperty
mkClarifyShapConfigProperty shapBaselineConfig
  = ClarifyShapConfigProperty
      {shapBaselineConfig = shapBaselineConfig,
       numberOfSamples = Prelude.Nothing, seed = Prelude.Nothing,
       textConfig = Prelude.Nothing, useLogit = Prelude.Nothing}
instance ToResourceProperties ClarifyShapConfigProperty where
  toResourceProperties ClarifyShapConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ClarifyShapConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ShapBaselineConfig" JSON..= shapBaselineConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "NumberOfSamples" Prelude.<$> numberOfSamples,
                               (JSON..=) "Seed" Prelude.<$> seed,
                               (JSON..=) "TextConfig" Prelude.<$> textConfig,
                               (JSON..=) "UseLogit" Prelude.<$> useLogit]))}
instance JSON.ToJSON ClarifyShapConfigProperty where
  toJSON ClarifyShapConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ShapBaselineConfig" JSON..= shapBaselineConfig]
              (Prelude.catMaybes
                 [(JSON..=) "NumberOfSamples" Prelude.<$> numberOfSamples,
                  (JSON..=) "Seed" Prelude.<$> seed,
                  (JSON..=) "TextConfig" Prelude.<$> textConfig,
                  (JSON..=) "UseLogit" Prelude.<$> useLogit])))
instance Property "NumberOfSamples" ClarifyShapConfigProperty where
  type PropertyType "NumberOfSamples" ClarifyShapConfigProperty = Value Prelude.Integer
  set newValue ClarifyShapConfigProperty {..}
    = ClarifyShapConfigProperty
        {numberOfSamples = Prelude.pure newValue, ..}
instance Property "Seed" ClarifyShapConfigProperty where
  type PropertyType "Seed" ClarifyShapConfigProperty = Value Prelude.Integer
  set newValue ClarifyShapConfigProperty {..}
    = ClarifyShapConfigProperty {seed = Prelude.pure newValue, ..}
instance Property "ShapBaselineConfig" ClarifyShapConfigProperty where
  type PropertyType "ShapBaselineConfig" ClarifyShapConfigProperty = ClarifyShapBaselineConfigProperty
  set newValue ClarifyShapConfigProperty {..}
    = ClarifyShapConfigProperty {shapBaselineConfig = newValue, ..}
instance Property "TextConfig" ClarifyShapConfigProperty where
  type PropertyType "TextConfig" ClarifyShapConfigProperty = ClarifyTextConfigProperty
  set newValue ClarifyShapConfigProperty {..}
    = ClarifyShapConfigProperty
        {textConfig = Prelude.pure newValue, ..}
instance Property "UseLogit" ClarifyShapConfigProperty where
  type PropertyType "UseLogit" ClarifyShapConfigProperty = Value Prelude.Bool
  set newValue ClarifyShapConfigProperty {..}
    = ClarifyShapConfigProperty {useLogit = Prelude.pure newValue, ..}