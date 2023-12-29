module Stratosphere.VpcLattice.Rule.HeaderMatchProperty (
        module Exports, HeaderMatchProperty(..), mkHeaderMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.HeaderMatchTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderMatchProperty
  = HeaderMatchProperty {caseSensitive :: (Prelude.Maybe (Value Prelude.Bool)),
                         match :: HeaderMatchTypeProperty,
                         name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderMatchProperty ::
  HeaderMatchTypeProperty
  -> Value Prelude.Text -> HeaderMatchProperty
mkHeaderMatchProperty match name
  = HeaderMatchProperty
      {match = match, name = name, caseSensitive = Prelude.Nothing}
instance ToResourceProperties HeaderMatchProperty where
  toResourceProperties HeaderMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.HeaderMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Match" JSON..= match, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive]))}
instance JSON.ToJSON HeaderMatchProperty where
  toJSON HeaderMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Match" JSON..= match, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CaseSensitive" Prelude.<$> caseSensitive])))
instance Property "CaseSensitive" HeaderMatchProperty where
  type PropertyType "CaseSensitive" HeaderMatchProperty = Value Prelude.Bool
  set newValue HeaderMatchProperty {..}
    = HeaderMatchProperty {caseSensitive = Prelude.pure newValue, ..}
instance Property "Match" HeaderMatchProperty where
  type PropertyType "Match" HeaderMatchProperty = HeaderMatchTypeProperty
  set newValue HeaderMatchProperty {..}
    = HeaderMatchProperty {match = newValue, ..}
instance Property "Name" HeaderMatchProperty where
  type PropertyType "Name" HeaderMatchProperty = Value Prelude.Text
  set newValue HeaderMatchProperty {..}
    = HeaderMatchProperty {name = newValue, ..}