module Stratosphere.GroundStation.DataflowEndpointGroup.RangedSocketAddressProperty (
        module Exports, RangedSocketAddressProperty(..),
        mkRangedSocketAddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.IntegerRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangedSocketAddressProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-rangedsocketaddress.html>
    RangedSocketAddressProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-rangedsocketaddress.html#cfn-groundstation-dataflowendpointgroup-rangedsocketaddress-name>
                                 name :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-rangedsocketaddress.html#cfn-groundstation-dataflowendpointgroup-rangedsocketaddress-portrange>
                                 portRange :: (Prelude.Maybe IntegerRangeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangedSocketAddressProperty :: RangedSocketAddressProperty
mkRangedSocketAddressProperty
  = RangedSocketAddressProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       portRange = Prelude.Nothing}
instance ToResourceProperties RangedSocketAddressProperty where
  toResourceProperties RangedSocketAddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.RangedSocketAddress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "PortRange" Prelude.<$> portRange])}
instance JSON.ToJSON RangedSocketAddressProperty where
  toJSON RangedSocketAddressProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "PortRange" Prelude.<$> portRange]))
instance Property "Name" RangedSocketAddressProperty where
  type PropertyType "Name" RangedSocketAddressProperty = Value Prelude.Text
  set newValue RangedSocketAddressProperty {..}
    = RangedSocketAddressProperty {name = Prelude.pure newValue, ..}
instance Property "PortRange" RangedSocketAddressProperty where
  type PropertyType "PortRange" RangedSocketAddressProperty = IntegerRangeProperty
  set newValue RangedSocketAddressProperty {..}
    = RangedSocketAddressProperty
        {portRange = Prelude.pure newValue, ..}