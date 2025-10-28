module Stratosphere.ServiceCatalog.AcceptedPortfolioShare (
        AcceptedPortfolioShare(..), mkAcceptedPortfolioShare
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceptedPortfolioShare
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html>
    AcceptedPortfolioShare {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-acceptlanguage>
                            acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-portfolioid>
                            portfolioId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceptedPortfolioShare ::
  Value Prelude.Text -> AcceptedPortfolioShare
mkAcceptedPortfolioShare portfolioId
  = AcceptedPortfolioShare
      {haddock_workaround_ = (), portfolioId = portfolioId,
       acceptLanguage = Prelude.Nothing}
instance ToResourceProperties AcceptedPortfolioShare where
  toResourceProperties AcceptedPortfolioShare {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::AcceptedPortfolioShare",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage]))}
instance JSON.ToJSON AcceptedPortfolioShare where
  toJSON AcceptedPortfolioShare {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage])))
instance Property "AcceptLanguage" AcceptedPortfolioShare where
  type PropertyType "AcceptLanguage" AcceptedPortfolioShare = Value Prelude.Text
  set newValue AcceptedPortfolioShare {..}
    = AcceptedPortfolioShare
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "PortfolioId" AcceptedPortfolioShare where
  type PropertyType "PortfolioId" AcceptedPortfolioShare = Value Prelude.Text
  set newValue AcceptedPortfolioShare {..}
    = AcceptedPortfolioShare {portfolioId = newValue, ..}