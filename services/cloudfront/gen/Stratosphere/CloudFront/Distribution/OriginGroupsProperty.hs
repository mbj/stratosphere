module Stratosphere.CloudFront.Distribution.OriginGroupsProperty (
        module Exports, OriginGroupsProperty(..), mkOriginGroupsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginGroupsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroups.html>
    OriginGroupsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroups.html#cfn-cloudfront-distribution-origingroups-items>
                          items :: (Prelude.Maybe [OriginGroupProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroups.html#cfn-cloudfront-distribution-origingroups-quantity>
                          quantity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginGroupsProperty ::
  Value Prelude.Integer -> OriginGroupsProperty
mkOriginGroupsProperty quantity
  = OriginGroupsProperty
      {haddock_workaround_ = (), quantity = quantity,
       items = Prelude.Nothing}
instance ToResourceProperties OriginGroupsProperty where
  toResourceProperties OriginGroupsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginGroups",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Quantity" JSON..= quantity]
                           (Prelude.catMaybes [(JSON..=) "Items" Prelude.<$> items]))}
instance JSON.ToJSON OriginGroupsProperty where
  toJSON OriginGroupsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Quantity" JSON..= quantity]
              (Prelude.catMaybes [(JSON..=) "Items" Prelude.<$> items])))
instance Property "Items" OriginGroupsProperty where
  type PropertyType "Items" OriginGroupsProperty = [OriginGroupProperty]
  set newValue OriginGroupsProperty {..}
    = OriginGroupsProperty {items = Prelude.pure newValue, ..}
instance Property "Quantity" OriginGroupsProperty where
  type PropertyType "Quantity" OriginGroupsProperty = Value Prelude.Integer
  set newValue OriginGroupsProperty {..}
    = OriginGroupsProperty {quantity = newValue, ..}