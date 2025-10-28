module Stratosphere.Route53.CidrCollection (
        module Exports, CidrCollection(..), mkCidrCollection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53.CidrCollection.LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CidrCollection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-cidrcollection.html>
    CidrCollection {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-cidrcollection.html#cfn-route53-cidrcollection-locations>
                    locations :: (Prelude.Maybe [LocationProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-cidrcollection.html#cfn-route53-cidrcollection-name>
                    name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCidrCollection :: Value Prelude.Text -> CidrCollection
mkCidrCollection name
  = CidrCollection
      {haddock_workaround_ = (), name = name,
       locations = Prelude.Nothing}
instance ToResourceProperties CidrCollection where
  toResourceProperties CidrCollection {..}
    = ResourceProperties
        {awsType = "AWS::Route53::CidrCollection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Locations" Prelude.<$> locations]))}
instance JSON.ToJSON CidrCollection where
  toJSON CidrCollection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Locations" Prelude.<$> locations])))
instance Property "Locations" CidrCollection where
  type PropertyType "Locations" CidrCollection = [LocationProperty]
  set newValue CidrCollection {..}
    = CidrCollection {locations = Prelude.pure newValue, ..}
instance Property "Name" CidrCollection where
  type PropertyType "Name" CidrCollection = Value Prelude.Text
  set newValue CidrCollection {..}
    = CidrCollection {name = newValue, ..}