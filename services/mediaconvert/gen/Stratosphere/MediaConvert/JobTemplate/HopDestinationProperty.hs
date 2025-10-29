module Stratosphere.MediaConvert.JobTemplate.HopDestinationProperty (
        HopDestinationProperty(..), mkHopDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HopDestinationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html>
    HopDestinationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html#cfn-mediaconvert-jobtemplate-hopdestination-priority>
                            priority :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html#cfn-mediaconvert-jobtemplate-hopdestination-queue>
                            queue :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-hopdestination.html#cfn-mediaconvert-jobtemplate-hopdestination-waitminutes>
                            waitMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHopDestinationProperty :: HopDestinationProperty
mkHopDestinationProperty
  = HopDestinationProperty
      {priority = Prelude.Nothing, queue = Prelude.Nothing,
       waitMinutes = Prelude.Nothing}
instance ToResourceProperties HopDestinationProperty where
  toResourceProperties HopDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConvert::JobTemplate.HopDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Priority" Prelude.<$> priority,
                            (JSON..=) "Queue" Prelude.<$> queue,
                            (JSON..=) "WaitMinutes" Prelude.<$> waitMinutes])}
instance JSON.ToJSON HopDestinationProperty where
  toJSON HopDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Priority" Prelude.<$> priority,
               (JSON..=) "Queue" Prelude.<$> queue,
               (JSON..=) "WaitMinutes" Prelude.<$> waitMinutes]))
instance Property "Priority" HopDestinationProperty where
  type PropertyType "Priority" HopDestinationProperty = Value Prelude.Integer
  set newValue HopDestinationProperty {..}
    = HopDestinationProperty {priority = Prelude.pure newValue, ..}
instance Property "Queue" HopDestinationProperty where
  type PropertyType "Queue" HopDestinationProperty = Value Prelude.Text
  set newValue HopDestinationProperty {..}
    = HopDestinationProperty {queue = Prelude.pure newValue, ..}
instance Property "WaitMinutes" HopDestinationProperty where
  type PropertyType "WaitMinutes" HopDestinationProperty = Value Prelude.Integer
  set newValue HopDestinationProperty {..}
    = HopDestinationProperty {waitMinutes = Prelude.pure newValue, ..}