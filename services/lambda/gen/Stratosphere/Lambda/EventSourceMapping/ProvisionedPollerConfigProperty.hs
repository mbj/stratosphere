module Stratosphere.Lambda.EventSourceMapping.ProvisionedPollerConfigProperty (
        ProvisionedPollerConfigProperty(..),
        mkProvisionedPollerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedPollerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-provisionedpollerconfig.html>
    ProvisionedPollerConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-provisionedpollerconfig.html#cfn-lambda-eventsourcemapping-provisionedpollerconfig-maximumpollers>
                                     maximumPollers :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-provisionedpollerconfig.html#cfn-lambda-eventsourcemapping-provisionedpollerconfig-minimumpollers>
                                     minimumPollers :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisionedPollerConfigProperty ::
  ProvisionedPollerConfigProperty
mkProvisionedPollerConfigProperty
  = ProvisionedPollerConfigProperty
      {haddock_workaround_ = (), maximumPollers = Prelude.Nothing,
       minimumPollers = Prelude.Nothing}
instance ToResourceProperties ProvisionedPollerConfigProperty where
  toResourceProperties ProvisionedPollerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.ProvisionedPollerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumPollers" Prelude.<$> maximumPollers,
                            (JSON..=) "MinimumPollers" Prelude.<$> minimumPollers])}
instance JSON.ToJSON ProvisionedPollerConfigProperty where
  toJSON ProvisionedPollerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumPollers" Prelude.<$> maximumPollers,
               (JSON..=) "MinimumPollers" Prelude.<$> minimumPollers]))
instance Property "MaximumPollers" ProvisionedPollerConfigProperty where
  type PropertyType "MaximumPollers" ProvisionedPollerConfigProperty = Value Prelude.Integer
  set newValue ProvisionedPollerConfigProperty {..}
    = ProvisionedPollerConfigProperty
        {maximumPollers = Prelude.pure newValue, ..}
instance Property "MinimumPollers" ProvisionedPollerConfigProperty where
  type PropertyType "MinimumPollers" ProvisionedPollerConfigProperty = Value Prelude.Integer
  set newValue ProvisionedPollerConfigProperty {..}
    = ProvisionedPollerConfigProperty
        {minimumPollers = Prelude.pure newValue, ..}