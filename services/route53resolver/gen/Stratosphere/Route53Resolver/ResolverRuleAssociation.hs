module Stratosphere.Route53Resolver.ResolverRuleAssociation (
        ResolverRuleAssociation(..), mkResolverRuleAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolverRuleAssociation
  = ResolverRuleAssociation {name :: (Prelude.Maybe (Value Prelude.Text)),
                             resolverRuleId :: (Value Prelude.Text),
                             vPCId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverRuleAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> ResolverRuleAssociation
mkResolverRuleAssociation resolverRuleId vPCId
  = ResolverRuleAssociation
      {resolverRuleId = resolverRuleId, vPCId = vPCId,
       name = Prelude.Nothing}
instance ToResourceProperties ResolverRuleAssociation where
  toResourceProperties ResolverRuleAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverRuleAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResolverRuleId" JSON..= resolverRuleId, "VPCId" JSON..= vPCId]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON ResolverRuleAssociation where
  toJSON ResolverRuleAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResolverRuleId" JSON..= resolverRuleId, "VPCId" JSON..= vPCId]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Name" ResolverRuleAssociation where
  type PropertyType "Name" ResolverRuleAssociation = Value Prelude.Text
  set newValue ResolverRuleAssociation {..}
    = ResolverRuleAssociation {name = Prelude.pure newValue, ..}
instance Property "ResolverRuleId" ResolverRuleAssociation where
  type PropertyType "ResolverRuleId" ResolverRuleAssociation = Value Prelude.Text
  set newValue ResolverRuleAssociation {..}
    = ResolverRuleAssociation {resolverRuleId = newValue, ..}
instance Property "VPCId" ResolverRuleAssociation where
  type PropertyType "VPCId" ResolverRuleAssociation = Value Prelude.Text
  set newValue ResolverRuleAssociation {..}
    = ResolverRuleAssociation {vPCId = newValue, ..}