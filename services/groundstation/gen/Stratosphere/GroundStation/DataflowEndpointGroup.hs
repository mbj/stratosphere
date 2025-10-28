module Stratosphere.GroundStation.DataflowEndpointGroup (
        module Exports, DataflowEndpointGroup(..), mkDataflowEndpointGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.EndpointDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataflowEndpointGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-dataflowendpointgroup.html>
    DataflowEndpointGroup {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-dataflowendpointgroup.html#cfn-groundstation-dataflowendpointgroup-contactpostpassdurationseconds>
                           contactPostPassDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-dataflowendpointgroup.html#cfn-groundstation-dataflowendpointgroup-contactprepassdurationseconds>
                           contactPrePassDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-dataflowendpointgroup.html#cfn-groundstation-dataflowendpointgroup-endpointdetails>
                           endpointDetails :: [EndpointDetailsProperty],
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-groundstation-dataflowendpointgroup.html#cfn-groundstation-dataflowendpointgroup-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataflowEndpointGroup ::
  [EndpointDetailsProperty] -> DataflowEndpointGroup
mkDataflowEndpointGroup endpointDetails
  = DataflowEndpointGroup
      {haddock_workaround_ = (), endpointDetails = endpointDetails,
       contactPostPassDurationSeconds = Prelude.Nothing,
       contactPrePassDurationSeconds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataflowEndpointGroup where
  toResourceProperties DataflowEndpointGroup {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointDetails" JSON..= endpointDetails]
                           (Prelude.catMaybes
                              [(JSON..=) "ContactPostPassDurationSeconds"
                                 Prelude.<$> contactPostPassDurationSeconds,
                               (JSON..=) "ContactPrePassDurationSeconds"
                                 Prelude.<$> contactPrePassDurationSeconds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataflowEndpointGroup where
  toJSON DataflowEndpointGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointDetails" JSON..= endpointDetails]
              (Prelude.catMaybes
                 [(JSON..=) "ContactPostPassDurationSeconds"
                    Prelude.<$> contactPostPassDurationSeconds,
                  (JSON..=) "ContactPrePassDurationSeconds"
                    Prelude.<$> contactPrePassDurationSeconds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContactPostPassDurationSeconds" DataflowEndpointGroup where
  type PropertyType "ContactPostPassDurationSeconds" DataflowEndpointGroup = Value Prelude.Integer
  set newValue DataflowEndpointGroup {..}
    = DataflowEndpointGroup
        {contactPostPassDurationSeconds = Prelude.pure newValue, ..}
instance Property "ContactPrePassDurationSeconds" DataflowEndpointGroup where
  type PropertyType "ContactPrePassDurationSeconds" DataflowEndpointGroup = Value Prelude.Integer
  set newValue DataflowEndpointGroup {..}
    = DataflowEndpointGroup
        {contactPrePassDurationSeconds = Prelude.pure newValue, ..}
instance Property "EndpointDetails" DataflowEndpointGroup where
  type PropertyType "EndpointDetails" DataflowEndpointGroup = [EndpointDetailsProperty]
  set newValue DataflowEndpointGroup {..}
    = DataflowEndpointGroup {endpointDetails = newValue, ..}
instance Property "Tags" DataflowEndpointGroup where
  type PropertyType "Tags" DataflowEndpointGroup = [Tag]
  set newValue DataflowEndpointGroup {..}
    = DataflowEndpointGroup {tags = Prelude.pure newValue, ..}