module Stratosphere.GameLift.Alias (
        module Exports, Alias(..), mkAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.Alias.RoutingStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alias
  = Alias {description :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Value Prelude.Text),
           routingStrategy :: RoutingStrategyProperty}
mkAlias :: Value Prelude.Text -> RoutingStrategyProperty -> Alias
mkAlias name routingStrategy
  = Alias
      {name = name, routingStrategy = routingStrategy,
       description = Prelude.Nothing}
instance ToResourceProperties Alias where
  toResourceProperties Alias {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Alias", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RoutingStrategy" JSON..= routingStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Alias where
  toJSON Alias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RoutingStrategy" JSON..= routingStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" Alias where
  type PropertyType "Description" Alias = Value Prelude.Text
  set newValue Alias {..}
    = Alias {description = Prelude.pure newValue, ..}
instance Property "Name" Alias where
  type PropertyType "Name" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {name = newValue, ..}
instance Property "RoutingStrategy" Alias where
  type PropertyType "RoutingStrategy" Alias = RoutingStrategyProperty
  set newValue Alias {..} = Alias {routingStrategy = newValue, ..}