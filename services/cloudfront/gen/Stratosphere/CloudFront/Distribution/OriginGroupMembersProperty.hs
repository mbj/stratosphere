module Stratosphere.CloudFront.Distribution.OriginGroupMembersProperty (
        module Exports, OriginGroupMembersProperty(..),
        mkOriginGroupMembersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.OriginGroupMemberProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginGroupMembersProperty
  = OriginGroupMembersProperty {items :: [OriginGroupMemberProperty],
                                quantity :: (Value Prelude.Integer)}
mkOriginGroupMembersProperty ::
  [OriginGroupMemberProperty]
  -> Value Prelude.Integer -> OriginGroupMembersProperty
mkOriginGroupMembersProperty items quantity
  = OriginGroupMembersProperty {items = items, quantity = quantity}
instance ToResourceProperties OriginGroupMembersProperty where
  toResourceProperties OriginGroupMembersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginGroupMembers",
         supportsTags = Prelude.False,
         properties = ["Items" JSON..= items, "Quantity" JSON..= quantity]}
instance JSON.ToJSON OriginGroupMembersProperty where
  toJSON OriginGroupMembersProperty {..}
    = JSON.object ["Items" JSON..= items, "Quantity" JSON..= quantity]
instance Property "Items" OriginGroupMembersProperty where
  type PropertyType "Items" OriginGroupMembersProperty = [OriginGroupMemberProperty]
  set newValue OriginGroupMembersProperty {..}
    = OriginGroupMembersProperty {items = newValue, ..}
instance Property "Quantity" OriginGroupMembersProperty where
  type PropertyType "Quantity" OriginGroupMembersProperty = Value Prelude.Integer
  set newValue OriginGroupMembersProperty {..}
    = OriginGroupMembersProperty {quantity = newValue, ..}