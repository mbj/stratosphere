module Stratosphere.WAFRegional.XssMatchSet (
        module Exports, XssMatchSet(..), mkXssMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.XssMatchSet.XssMatchTupleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data XssMatchSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html>
    XssMatchSet {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-xssmatchtuples>
                 xssMatchTuples :: (Prelude.Maybe [XssMatchTupleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXssMatchSet :: Value Prelude.Text -> XssMatchSet
mkXssMatchSet name
  = XssMatchSet
      {haddock_workaround_ = (), name = name,
       xssMatchTuples = Prelude.Nothing}
instance ToResourceProperties XssMatchSet where
  toResourceProperties XssMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::XssMatchSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "XssMatchTuples" Prelude.<$> xssMatchTuples]))}
instance JSON.ToJSON XssMatchSet where
  toJSON XssMatchSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "XssMatchTuples" Prelude.<$> xssMatchTuples])))
instance Property "Name" XssMatchSet where
  type PropertyType "Name" XssMatchSet = Value Prelude.Text
  set newValue XssMatchSet {..} = XssMatchSet {name = newValue, ..}
instance Property "XssMatchTuples" XssMatchSet where
  type PropertyType "XssMatchTuples" XssMatchSet = [XssMatchTupleProperty]
  set newValue XssMatchSet {..}
    = XssMatchSet {xssMatchTuples = Prelude.pure newValue, ..}