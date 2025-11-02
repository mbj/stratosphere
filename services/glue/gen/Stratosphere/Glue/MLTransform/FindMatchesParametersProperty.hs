module Stratosphere.Glue.MLTransform.FindMatchesParametersProperty (
        FindMatchesParametersProperty(..), mkFindMatchesParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FindMatchesParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html>
    FindMatchesParametersProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-accuracycosttradeoff>
                                   accuracyCostTradeoff :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-enforceprovidedlabels>
                                   enforceProvidedLabels :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-precisionrecalltradeoff>
                                   precisionRecallTradeoff :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-primarykeycolumnname>
                                   primaryKeyColumnName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFindMatchesParametersProperty ::
  Value Prelude.Text -> FindMatchesParametersProperty
mkFindMatchesParametersProperty primaryKeyColumnName
  = FindMatchesParametersProperty
      {haddock_workaround_ = (),
       primaryKeyColumnName = primaryKeyColumnName,
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