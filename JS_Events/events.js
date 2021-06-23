document.addEventListener('DOMContentLoaded',(e)=>{

    let emailInput = document.querySelector(".emailInput");
    emailInput.addEventListener('input', (x)=> {
        console.log(x.target.value);
    })
})

const calculateScrollPercent = (docE) => {
    // const { scrollTop, scrollHeight, clientHeight} = docE;
    let scrollTop = docE.scrollTop;
    let scrollHeight = docE.scrollHeight;
    let clientHeight = docE.clientHeight;
    return (scrollTop/(scrollHeight - clientHeight)) * 100;
}

document.addEventListener('scroll', (scrollEvent)=> {
    console.log(scrollEvent);
    let ribbon = document.querySelector('.scrollRibbon');
    ribbon.style.width = `${calculateScrollPercent(scrollEvent.target.documentElement)}%`
});

// const textChange = (e) => {
//     console.log(e.target);
// }