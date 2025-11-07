module Stratosphere.APS.AnomalyDetector.RandomCutForestConfigurationProperty (
        module Exports, RandomCutForestConfigurationProperty(..),
        mkRandomCutForestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.AnomalyDetector.IgnoreNearExpectedProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RandomCutForestConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-randomcutforestconfiguration.html>
    RandomCutForestConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-randomcutforestconfiguration.html#cfn-aps-anomalydetector-randomcutforestconfiguration-ignorenearexpectedfromabove>
                                          ignoreNearExpectedFromAbove :: (Prelude.Maybe IgnoreNearExpectedProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-randomcutforestconfiguration.html#cfn-aps-anomalydetector-randomcutforestconfiguration-ignorenearexpectedfrombelow>
                                          ignoreNearExpectedFromBelow :: (Prelude.Maybe IgnoreNearExpectedProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-randomcutforestconfiguration.html#cfn-aps-anomalydetector-randomcutforestconfiguration-query>
                                          query :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-randomcutforestconfiguration.html#cfn-aps-anomalydetector-randomcutforestconfiguration-samplesize>
                                          sampleSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-randomcutforestconfiguration.html#cfn-aps-anomalydetector-randomcutforestconfiguration-shinglesize>
                                          shingleSize :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRandomCutForestConfigurationProperty ::
  Value Prelude.Text -> RandomCutForestConfigurationProperty
mkRandomCutForestConfigurationProperty query
  = RandomCutForestConfigurationProperty
      {haddock_workaround_ = (), query = query,
       ignoreNearExpectedFromAbove = Prelude.Nothing,
       ignoreNearExpectedFromBelow = Prelude.Nothing,
       sampleSize = Prelude.Nothing, shingleSize = Prelude.Nothing}
instance ToResourceProperties RandomCutForestConfigurationProperty where
  toResourceProperties RandomCutForestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::AnomalyDetector.RandomCutForestConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Query" JSON..= query]
                           (Prelude.catMaybes
                              [(JSON..=) "IgnoreNearExpectedFromAbove"
                                 Prelude.<$> ignoreNearExpectedFromAbove,
                               (JSON..=) "IgnoreNearExpectedFromBelow"
                                 Prelude.<$> ignoreNearExpectedFromBelow,
                               (JSON..=) "SampleSize" Prelude.<$> sampleSize,
                               (JSON..=) "ShingleSize" Prelude.<$> shingleSize]))}
instance JSON.ToJSON RandomCutForestConfigurationProperty where
  toJSON RandomCutForestConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Query" JSON..= query]
              (Prelude.catMaybes
                 [(JSON..=) "IgnoreNearExpectedFromAbove"
                    Prelude.<$> ignoreNearExpectedFromAbove,
                  (JSON..=) "IgnoreNearExpectedFromBelow"
                    Prelude.<$> ignoreNearExpectedFromBelow,
                  (JSON..=) "SampleSize" Prelude.<$> sampleSize,
                  (JSON..=) "ShingleSize" Prelude.<$> shingleSize])))
instance Property "IgnoreNearExpectedFromAbove" RandomCutForestConfigurationProperty where
  type PropertyType "IgnoreNearExpectedFromAbove" RandomCutForestConfigurationProperty = IgnoreNearExpectedProperty
  set newValue RandomCutForestConfigurationProperty {..}
    = RandomCutForestConfigurationProperty
        {ignoreNearExpectedFromAbove = Prelude.pure newValue, ..}
instance Property "IgnoreNearExpectedFromBelow" RandomCutForestConfigurationProperty where
  type PropertyType "IgnoreNearExpectedFromBelow" RandomCutForestConfigurationProperty = IgnoreNearExpectedProperty
  set newValue RandomCutForestConfigurationProperty {..}
    = RandomCutForestConfigurationProperty
        {ignoreNearExpectedFromBelow = Prelude.pure newValue, ..}
instance Property "Query" RandomCutForestConfigurationProperty where
  type PropertyType "Query" RandomCutForestConfigurationProperty = Value Prelude.Text
  set newValue RandomCutForestConfigurationProperty {..}
    = RandomCutForestConfigurationProperty {query = newValue, ..}
instance Property "SampleSize" RandomCutForestConfigurationProperty where
  type PropertyType "SampleSize" RandomCutForestConfigurationProperty = Value Prelude.Integer
  set newValue RandomCutForestConfigurationProperty {..}
    = RandomCutForestConfigurationProperty
        {sampleSize = Prelude.pure newValue, ..}
instance Property "ShingleSize" RandomCutForestConfigurationProperty where
  type PropertyType "ShingleSize" RandomCutForestConfigurationProperty = Value Prelude.Integer
  set newValue RandomCutForestConfigurationProperty {..}
    = RandomCutForestConfigurationProperty
        {shingleSize = Prelude.pure newValue, ..}