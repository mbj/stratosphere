module Stratosphere.Glue.MLTransform.FindMatchesParametersProperty (
        FindMatchesParametersProperty(..), mkFindMatchesParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FindMatchesParametersProperty
  = FindMatchesParametersProperty {accuracyCostTradeoff :: (Prelude.Maybe (Value Prelude.Double)),
                                   enforceProvidedLabels :: (Prelude.Maybe (Value Prelude.Bool)),
                                   precisionRecallTradeoff :: (Prelude.Maybe (Value Prelude.Double)),
                                   primaryKeyColumnName :: (Value Prelude.Text)}
mkFindMatchesParametersProperty ::
  Value Prelude.Text -> FindMatchesParametersProperty
mkFindMatchesParametersProperty primaryKeyColumnName
  = FindMatchesParametersProperty
      {primaryKeyColumnName = primaryKeyColumnName,
       accuracyCostTradeoff = Prelude.Nothing,
       enforceProvidedLabels = Prelude.Nothing,
       precisionRecallTradeoff = Prelude.Nothing}
instance ToResourceProperties FindMatchesParametersProperty where
  toResourceProperties FindMatchesParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.FindMatchesParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PrimaryKeyColumnName" JSON..= primaryKeyColumnName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccuracyCostTradeoff" Prelude.<$> accuracyCostTradeoff,
                               (JSON..=) "EnforceProvidedLabels"
                                 Prelude.<$> enforceProvidedLabels,
                               (JSON..=) "PrecisionRecallTradeoff"
                                 Prelude.<$> precisionRecallTradeoff]))}
instance JSON.ToJSON FindMatchesParametersProperty where
  toJSON FindMatchesParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PrimaryKeyColumnName" JSON..= primaryKeyColumnName]
              (Prelude.catMaybes
                 [(JSON..=) "AccuracyCostTradeoff" Prelude.<$> accuracyCostTradeoff,
                  (JSON..=) "EnforceProvidedLabels"
                    Prelude.<$> enforceProvidedLabels,
                  (JSON..=) "PrecisionRecallTradeoff"
                    Prelude.<$> precisionRecallTradeoff])))
instance Property "AccuracyCostTradeoff" FindMatchesParametersProperty where
  type PropertyType "AccuracyCostTradeoff" FindMatchesParametersProperty = Value Prelude.Double
  set newValue FindMatchesParametersProperty {..}
    = FindMatchesParametersProperty
        {accuracyCostTradeoff = Prelude.pure newValue, ..}
instance Property "EnforceProvidedLabels" FindMatchesParametersProperty where
  type PropertyType "EnforceProvidedLabels" FindMatchesParametersProperty = Value Prelude.Bool
  set newValue FindMatchesParametersProperty {..}
    = FindMatchesParametersProperty
        {enforceProvidedLabels = Prelude.pure newValue, ..}
instance Property "PrecisionRecallTradeoff" FindMatchesParametersProperty where
  type PropertyType "PrecisionRecallTradeoff" FindMatchesParametersProperty = Value Prelude.Double
  set newValue FindMatchesParametersProperty {..}
    = FindMatchesParametersProperty
        {precisionRecallTradeoff = Prelude.pure newValue, ..}
instance Property "PrimaryKeyColumnName" FindMatchesParametersProperty where
  type PropertyType "PrimaryKeyColumnName" FindMatchesParametersProperty = Value Prelude.Text
  set newValue FindMatchesParametersProperty {..}
    = FindMatchesParametersProperty
        {primaryKeyColumnName = newValue, ..}