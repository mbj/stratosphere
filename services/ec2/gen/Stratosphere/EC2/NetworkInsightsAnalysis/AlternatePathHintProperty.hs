module Stratosphere.EC2.NetworkInsightsAnalysis.AlternatePathHintProperty (
        AlternatePathHintProperty(..), mkAlternatePathHintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlternatePathHintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-alternatepathhint.html>
    AlternatePathHintProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-alternatepathhint.html#cfn-ec2-networkinsightsanalysis-alternatepathhint-componentarn>
                               componentArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-alternatepathhint.html#cfn-ec2-networkinsightsanalysis-alternatepathhint-componentid>
                               componentId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlternatePathHintProperty :: AlternatePathHintProperty
mkAlternatePathHintProperty
  = AlternatePathHintProperty
      {haddock_workaround_ = (), componentArn = Prelude.Nothing,
       componentId = Prelude.Nothing}
instance ToResourceProperties AlternatePathHintProperty where
  toResourceProperties AlternatePathHintProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AlternatePathHint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentArn" Prelude.<$> componentArn,
                            (JSON..=) "ComponentId" Prelude.<$> componentId])}
instance JSON.ToJSON AlternatePathHintProperty where
  toJSON AlternatePathHintProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentArn" Prelude.<$> componentArn,
               (JSON..=) "ComponentId" Prelude.<$> componentId]))
instance Property "ComponentArn" AlternatePathHintProperty where
  type PropertyType "ComponentArn" AlternatePathHintProperty = Value Prelude.Text
  set newValue AlternatePathHintProperty {..}
    = AlternatePathHintProperty
        {componentArn = Prelude.pure newValue, ..}
instance Property "ComponentId" AlternatePathHintProperty where
  type PropertyType "ComponentId" AlternatePathHintProperty = Value Prelude.Text
  set newValue AlternatePathHintProperty {..}
    = AlternatePathHintProperty
        {componentId = Prelude.pure newValue, ..}